--------------------------------------------------------------------------------
-- 1. Personnel Involved in All Missions Since 2022 (Completed Missions Only)
--------------------------------------------------------------------------------
SELECT p.personnelID, p.firstName, p.lastName
FROM personnel p
JOIN personnel_missions pm ON p.personnelID = pm.personnelID
JOIN missions m ON pm.missionID = m.missionID
WHERE m.startDate >= TO_DATE('2022-01-01', 'YYYY-MM-DD')
  AND m.STATUS = 'Completed'
GROUP BY p.personnelID, p.firstName, p.lastName
HAVING COUNT(DISTINCT m.missionID) = (
    SELECT COUNT(DISTINCT missionID)
    FROM missions
    WHERE startDate >= TO_DATE('2022-01-01', 'YYYY-MM-DD')
      AND status = 'Completed'
);

--------------------------------------------------------------------------------
-- 2. Personnel Who Never Completed Any Training But Have Received Awards 
--------------------------------------------------------------------------------
SELECT p.personnelID, p.firstName, p.lastName
FROM personnel p
WHERE NOT EXISTS (
    SELECT 1
    FROM personnel_trainings pt
    WHERE pt.personnelID = p.personnelID
      AND pt.completionDate IS NOT NULL
)
AND EXISTS (
    SELECT 1
    FROM awards a
    WHERE a.personnelID = p.personnelID
);

--------------------------------------------------------------------------------
-- 3. Longest-Serving Active Personnel Based on Enlistment Date 
--------------------------------------------------------------------------------
SELECT p.personnelID, p.firstName, p.lastName, TO_CHAR(p.enlistmentDate, 'DD-MM-YYYY') AS enlistmentDate
FROM personnel p
WHERE (SYSDATE - p.enlistmentDate) = (
    SELECT MAX(SYSDATE - enlistmentDate)
    FROM personnel
    WHERE status = 'Active'
);


--------------------------------------------------------------------------------
-- 4. Units Where All Personnel Have Completed a Specific Training (training id 1)
--------------------------------------------------------------------------------
SELECT u.unitID, u.unitName
FROM units u
WHERE EXISTS (
    SELECT 1 FROM personnel p WHERE p.unitID = u.unitID
)
AND NOT EXISTS (
    SELECT 1
    FROM personnel p
    WHERE p.unitID = u.unitID
    AND NOT EXISTS (
        SELECT 1
        FROM personnel_trainings pt
        WHERE pt.personnelID = p.personnelID
          AND pt.trainingID = 1
          AND pt.completionDate IS NOT NULL
    )
);

--------------------------------------------------------------------------------
-- 5. Personnel Who Received Disciplinary Action After Receiving an Award 
--------------------------------------------------------------------------------
SELECT p.personnelID, p.firstName, p.lastName
FROM personnel p
WHERE EXISTS (
    SELECT 1 FROM disciplinary_actions da
    WHERE da.personnelID = p.personnelID
)
AND EXISTS (
    SELECT 1 FROM awards a
    WHERE a.personnelID = p.personnelID
)
AND (
    (SELECT MAX(da.dateOfAction)
     FROM disciplinary_actions da
     WHERE da.personnelID = p.personnelID)
    >
    (SELECT MAX(a.dateAwarded)
     FROM awards a
     WHERE a.personnelID = p.personnelID)
);
