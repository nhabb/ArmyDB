-- selecting personal details along with their ranks--
SELECT p.firstName, p.lastName, r.rankName
FROM personal p
JOIN ranks r ON p.rankID = r.rankID;
--Get the names of all bases in Beirut--

SELECT baseName
FROM bases
WHERE location = 'Beirut';
--show all the personal rolled after 2020--
SELECT firstName, lastName, enlistmentDate
FROM personal
WHERE enlistmentDate > TO_DATE('2020-12-31', 'YYYY-MM-DD');
--Display equipment assigned to a specific unit (e.g., unitID = 202)--
SELECT Name, serialNumber, type
FROM equipment
WHERE assignedToUnit = 202;
--awards in 2023--
SELECT awardName, dateawareded, reason
FROM awards
WHERE EXTRACT(YEAR FROM dateawareded) = 2023;
--List personnel currently on leave--
SELECT p.firstName, p.lastName
FROM personal p
JOIN leaves l ON p.personalID = l.personalID
WHERE l.startDate <= SYSDATE AND l.endDate >= SYSDATE;
--Show trainings completed before a certain date (e.g., 2023-01-01)
SELECT pt.personalID, t.trainingName, pt.completionDate
FROM personal_trainings pt
JOIN trainings t ON pt.trainingID = t.trainingID
WHERE pt.completionDate < TO_DATE('2023-01-01', 'YYYY-MM-DD');
--List missions that are currently “Active”--
SELECT missionName
FROM missions
WHERE status = 'Active';
--Display medical records for a specific soldier (e.g., personalID = 301)--
SELECT diagnosis, treatment, recordDate
FROM medical_records
WHERE personalID = 301;
--Get all personnel in a given unit (e.g., unitID = 201)--
SELECT firstName, lastName
FROM personal
WHERE unitID = 201;