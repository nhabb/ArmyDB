-- Insert bases
INSERT INTO bases (baseID, baseName, location) VALUES (1, 'Beirut Central Base', 'Beirut');
INSERT INTO bases (baseID, baseName, location) VALUES (2, 'North Base', 'Tripoli');
INSERT INTO bases (baseID, baseName, location) VALUES (3, 'South Base', 'Sidon');

-- Insert ranks
INSERT INTO ranks (rankID, rankName, rankOrder) VALUES (1, 'Lieutenant', 1);
INSERT INTO ranks (rankID, rankName, rankOrder) VALUES (2, 'Captain', 2);
INSERT INTO ranks (rankID, rankName, rankOrder) VALUES (3, 'Major', 3);

-- Insert units
INSERT INTO units (unitID, unitName, baseID, parentUnitID) VALUES (10, '1st Infantry Brigade', 1, NULL);
INSERT INTO units (unitID, unitName, baseID, parentUnitID) VALUES (20, '2nd Armored Division', 2, NULL);
INSERT INTO units (unitID, unitName, baseID, parentUnitID) VALUES (30, '3rd Artillery Regiment', 3, NULL);
INSERT INTO units (unitID, unitName, baseID, parentUnitID) VALUES (11, 'Alpha Company', 1, 10);
INSERT INTO units (unitID, unitName, baseID, parentUnitID) VALUES (21, 'Bravo Squadron', 2, 20);


-- Insert personnel
INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(101, 'Ali', 'Hassan', TO_DATE('1990-05-14', 'YYYY-MM-DD'), TO_DATE('2012-01-10', 'YYYY-MM-DD'), 'Active', 1, 10);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(102, 'Maya', 'Saleh', TO_DATE('1993-08-22', 'YYYY-MM-DD'), TO_DATE('2015-03-01', 'YYYY-MM-DD'), 'Active', 2, 20);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(103, 'Omar', 'Nasser', TO_DATE('1988-11-30', 'YYYY-MM-DD'), TO_DATE('2010-06-20', 'YYYY-MM-DD'), 'Retired', 1, 10);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(104, 'Lina', 'Khaled', TO_DATE('1995-02-10', 'YYYY-MM-DD'), TO_DATE('2017-09-05', 'YYYY-MM-DD'), 'Active', 3, 30);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(105, 'Rami', 'Zein', TO_DATE('1992-03-15', 'YYYY-MM-DD'), TO_DATE('2014-04-10', 'YYYY-MM-DD'), 'Active', 2, 20);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(106, 'Dina', 'Farah', TO_DATE('1994-07-01', 'YYYY-MM-DD'), TO_DATE('2016-07-22', 'YYYY-MM-DD'), 'On Leave', 1, 10);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(107, 'Jad', 'Abdallah', TO_DATE('1991-10-05', 'YYYY-MM-DD'), TO_DATE('2013-05-12', 'YYYY-MM-DD'), 'Active', 3, 30);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(108, 'Samar', 'Issa', TO_DATE('1989-12-17', 'YYYY-MM-DD'), TO_DATE('2009-10-03', 'YYYY-MM-DD'), 'Retired', 2, 20);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(109, 'Karim', 'Najjar', TO_DATE('1996-09-25', 'YYYY-MM-DD'), TO_DATE('2018-01-17', 'YYYY-MM-DD'), 'Active', 1, 10);

INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) VALUES
(110, 'Nour', 'Barakat', TO_DATE('1990-04-08', 'YYYY-MM-DD'), TO_DATE('2011-11-11', 'YYYY-MM-DD'), 'Active', 3, 30);


-- INSERT EQUIPMENT
INSERT INTO equipment (equipmentID, name, serialNumber, type, assignedToPersonnel, assignedToUnit) VALUES (1001, 'Rifle', 'SN12345', 'Weapon', 101, NULL);
INSERT INTO equipment (equipmentID, name, serialNumber, type, assignedToPersonnel, assignedToUnit) VALUES (1002, 'Tank', 'SN54321', 'Vehicle', NULL, 20);
INSERT INTO equipment (equipmentID, name, serialNumber, type, assignedToPersonnel, assignedToUnit) VALUES (1003, 'Radio', 'SN67890', 'Communication', 102, NULL);
INSERT INTO equipment (equipmentID, name, serialNumber, type, assignedToPersonnel, assignedToUnit) VALUES (1004, 'Artillery Gun', 'SN09876', 'Weapon', NULL, 30);
INSERT INTO equipment (equipmentID, name, serialNumber, type, assignedToPersonnel, assignedToUnit) VALUES (1005, 'Helmet', 'SN11223', 'Gear', 105, NULL);

-- INSERT MISSIONS 
INSERT INTO missions (missionID, missionName, description, startDate, endDate, status) VALUES (1, 'Peacekeeping in South', 'Support peacekeeping operations', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Ongoing');
INSERT INTO missions (missionID, missionName, description, startDate, endDate, status) VALUES (2, 'Border Patrol', 'Secure northern border', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'Planned');
INSERT INTO missions (missionID, missionName, description, startDate, endDate, status) VALUES (3, 'Training Exercise Alpha', 'Annual training exercise', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 'Completed');

-- INSERT PERSONNEL_MISSIONS
INSERT INTO personnel_missions (personnelID, missionID, role) VALUES (101, 1, 'Team Leader');
INSERT INTO personnel_missions (personnelID, missionID, role) VALUES (102, 1, 'Communications');
INSERT INTO personnel_missions (personnelID, missionID, role) VALUES (105, 2, 'Scout');
INSERT INTO personnel_missions (personnelID, missionID, role) VALUES (107, 3, 'Trainer');
INSERT INTO personnel_missions (personnelID, missionID, role) VALUES (109, 3, 'Participant');

-- INSERT TRAININGS
INSERT INTO trainings (trainingID, trainingName, description) VALUES (1, 'Basic Combat Training', 'Fundamental military combat skills');
INSERT INTO trainings (trainingID, trainingName, description) VALUES (2, 'Advanced Marksmanship', 'Expert rifle and pistol training');
INSERT INTO trainings (trainingID, trainingName, description) VALUES (3, 'Leadership Course', 'Training for team leaders and officers');

-- INSERT PERSONNEL_TRAININGS
INSERT INTO personnel_trainings (personnelID, trainingID, completionDate) VALUES (101, 1, TO_DATE('2012-06-15', 'YYYY-MM-DD'));
INSERT INTO personnel_trainings (personnelID, trainingID, completionDate) VALUES (102, 2, TO_DATE('2016-04-20', 'YYYY-MM-DD'));
INSERT INTO personnel_trainings (personnelID, trainingID, completionDate) VALUES (105, 3, TO_DATE('2015-11-30', 'YYYY-MM-DD'));
INSERT INTO personnel_trainings (personnelID, trainingID, completionDate) VALUES (107, 1, TO_DATE('2013-07-12', 'YYYY-MM-DD'));
INSERT INTO personnel_trainings (personnelID, trainingID, completionDate) VALUES (109, 2, TO_DATE('2019-01-05', 'YYYY-MM-DD'));

--INSERT MEDICAL_RECORDS
INSERT INTO medical_records (recordID, personnelID, diagnosis, treatment, recordDate) VALUES (1, 101, 'Sprained Ankle', 'Rest and physiotherapy', TO_DATE('2023-02-10', 'YYYY-MM-DD'));
INSERT INTO medical_records (recordID, personnelID, diagnosis, treatment, recordDate) VALUES (2, 102, 'Flu', 'Antiviral medication', TO_DATE('2022-12-15', 'YYYY-MM-DD'));
INSERT INTO medical_records (recordID, personnelID, diagnosis, treatment, recordDate) VALUES (3, 105, 'Broken Arm', 'Cast and rehab', TO_DATE('2021-09-22', 'YYYY-MM-DD'));

-- INSERT LEAVES
INSERT INTO leaves (leaveID, personnelID, startDate, endDate, reason, approvalStatus) VALUES (1, 101, TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-01-20', 'YYYY-MM-DD'), 'Medical leave', 'Approved');
INSERT INTO leaves (leaveID, personnelID, startDate, endDate, reason, approvalStatus) VALUES (2, 102, TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-11-15', 'YYYY-MM-DD'), 'Vacation', 'Approved');
INSERT INTO leaves (leaveID, personnelID, startDate, endDate, reason, approvalStatus) VALUES (3, 105, TO_DATE('2024-03-05', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Personal reasons', 'Pending');


-- INSERT AWARDS
INSERT INTO awards (awardID, personnelID, awardName, dateAwarded, reason) VALUES (1, 101, 'Medal of Honor', TO_DATE('2023-05-12', 'YYYY-MM-DD'), 'Bravery in combat');
INSERT INTO awards (awardID, personnelID, awardName, dateAwarded, reason) VALUES (2, 107, 'Service Excellence', TO_DATE('2022-08-22', 'YYYY-MM-DD'), 'Outstanding service');
INSERT INTO awards (awardID, personnelID, awardName, dateAwarded, reason) VALUES (3, 109, 'Leadership Award', TO_DATE('2023-01-30', 'YYYY-MM-DD'), 'Exceptional leadership');

-- INSERT disciplinary_actions
INSERT INTO disciplinary_actions (actionID, personnelID, offense, actionTaken, dateOfAction) VALUES (1, 105, 'Unauthorized absence', 'Written warning', TO_DATE('2023-04-15', 'YYYY-MM-DD'));
INSERT INTO disciplinary_actions (actionID, personnelID, offense, actionTaken, dateOfAction) VALUES (2, 102, 'Disrespect to superior', 'Suspension for 3 days', TO_DATE('2022-10-01', 'YYYY-MM-DD'));
INSERT INTO disciplinary_actions (actionID, personnelID, offense, actionTaken, dateOfAction) VALUES (3, 109, 'Negligence', 'Demotion', TO_DATE('2024-02-20', 'YYYY-MM-DD'));