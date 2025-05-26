-- === INSERT DATA FOR TESTING ===

-- RANKS
INSERT INTO ranks (rankID, rankName) VALUES 
(1, 'Lieutenant'),
(2, 'Captain'), 
(3, 'Major');

-- PERSONNEL
INSERT INTO personnel (personnelID, firstName, lastName, rankID, unitID, enlistmentDate)
VALUES 
(101, 'Ali', 'Hassan', 1, 201, TO_DATE('2021-06-15', 'YYYY-MM-DD')),
(102, 'Sara', 'Ahmad', 2, 202, TO_DATE('2019-03-10', 'YYYY-MM-DD')),
(103, 'Jad', 'Nasr', 3, 202, TO_DATE('2022-08-01', 'YYYY-MM-DD'));

-- BASES
INSERT INTO bases (baseID, baseName, location)
VALUES 
(1, 'Beirut Central Base', 'Beirut'),
(2, 'Tripoli North Base', 'Tripoli');

-- EQUIPMENT
INSERT INTO equipment (equipmentID, name, serialNumber, type, assignedToUnit)
VALUES 
(1, 'Rifle A1', 'SN12345', 'Weapon', 202),
(2, 'Radio X2', 'SN98765', 'Communication', 201);

-- AWARDS
INSERT INTO awards (awardID, awardName, dateAwarded, reason, personnelID)
VALUES 
(1, 'Bravery Medal', TO_DATE('2023-05-20', 'YYYY-MM-DD'), 'Rescue operation', 101),
(2, 'Service Star', TO_DATE('2022-11-10', 'YYYY-MM-DD'), '5 years of service', 102);

-- LEAVES
INSERT INTO leaves (leaveID, personnelID, startDate, endDate)
VALUES 
(1, 101, TO_DATE('2025-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-30', 'YYYY-MM-DD')),
(2, 102, TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'));

-- TRAININGS
INSERT INTO trainings (trainingID, trainingName)
VALUES 
(1, 'Basic Combat Training'),
(2, 'Field Medical Training');

-- PERSONNEL_TRAININGS
INSERT INTO personnel_trainings (personnelID, trainingID, completionDate)
VALUES 
(101, 1, TO_DATE('2022-05-10', 'YYYY-MM-DD')),
(102, 2, TO_DATE('2023-04-01', 'YYYY-MM-DD'));

-- MISSIONS
INSERT INTO missions (missionID, missionName, status)
VALUES 
(1, 'Operation Shield', 'Active'),
(2, 'Operation Storm', 'Completed');

-- MEDICAL RECORDS
INSERT INTO medical_records (recordID, personnelID, diagnosis, treatment, recordDate)
VALUES 
(1, 301, 'Fracture', 'Cast & Rest', TO_DATE('2024-10-10', 'YYYY-MM-DD')),
(2, 301, 'Heatstroke', 'Hydration', TO_DATE('2023-07-05', 'YYYY-MM-DD'));

<<<<<<< HEAD
=======
-- === YOUR ORIGINAL 
>>>>>>> 4a28d2aaf9452e8ccdc5fab06fc76eb97641607b
