-- 1. Select PERSONNEL details along with their ranks
SELECT p.firstName, p.lastName, r.rankName
FROM personnel p
JOIN ranks r ON p.rankID = r.rankID;

-- 2. Get the names of all BASES in Beirut
SELECT baseName
FROM bases
WHERE location = 'Beirut';

-- 3. Show all the PERSONNEL enlisted after 2020
SELECT firstName, lastName, enlistmentDate
FROM personnel
WHERE enlistmentDate > TO_DATE('1970-12-31', 'YYYY-MM-DD');

-- 4. Display EQUIPMENT assigned to a specific unit (e.g., unitID = 202)
SELECT name, serialNumber, type
FROM equipment
WHERE assignedToUnit = 20;

-- 5. AWARDS in 2023
SELECT awardName, dateAwarded, reason
FROM awards
WHERE EXTRACT(YEAR FROM dateAwarded) = 2023;

-- 6. List personnel currently on leave
SELECT p.firstName, p.lastName
FROM personnel p
JOIN leaves l ON p.personnelID = l.personnelID
WHERE l.APPROVALSTATUS = 'Approved';

-- 7. Show TRAININGS completed before a certain date (e.g., 2023-01-01)
SELECT pt.personnelID, t.trainingName, pt.completionDate
FROM personnel_trainings pt
JOIN trainings t ON pt.trainingID = t.trainingID
WHERE pt.completionDate < TO_DATE('2023-01-01', 'YYYY-MM-DD');

-- 8. List MISSIONS that are currently “Active”
SELECT missionName
FROM missions
WHERE status = 'Ongoing';

-- 9. Display MEDICAL RECORDS for a specific soldier (e.g., personnelID = 301)
SELECT diagnosis, treatment, recordDate
FROM medical_records
WHERE personnelID = 101;

-- 10. Get all PERSONNEL in a given unit (e.g., unitID = 201)
SELECT firstName, lastName
FROM personnel
WHERE unitID = 20;
