-- 1. Ranks
CREATE TABLE ranks (
    rankID NUMBER PRIMARY KEY,
    rankName VARCHAR2(50),
    rankOrder NUMBER
);

-- 2. Bases
CREATE TABLE bases (
    baseID NUMBER PRIMARY KEY,
    baseName VARCHAR2(100),
    location VARCHAR2(100),
    commandingOfficer NUMBER
);

-- 3. Units
CREATE TABLE units (
    unitID NUMBER PRIMARY KEY,
    unitName VARCHAR2(100),
    baseID NUMBER,
    parentUnitID NUMBER,
    FOREIGN KEY (baseID) REFERENCES bases(baseID),
    FOREIGN KEY (parentUnitID) REFERENCES units(unitID)
);

-- 4. Personnel
CREATE TABLE personnel (
    personnelID NUMBER PRIMARY KEY,
    firstName VARCHAR2(50),
    lastName VARCHAR2(50),
    dateOfBirth DATE,
    enlistmentDate DATE,
    status VARCHAR2(20),
    rankID NUMBER,
    unitID NUMBER,
    FOREIGN KEY (rankID) REFERENCES ranks(rankID),
    FOREIGN KEY (unitID) REFERENCES units(unitID)
);

-- 5. Equipment
CREATE TABLE equipment (
    equipmentID NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    serialNumber VARCHAR2(100),
    type VARCHAR2(50),
    assignedToPersonnel NUMBER,
    assignedToUnit NUMBER,
    FOREIGN KEY (assignedToPersonnel) REFERENCES personnel(personnelID),
    FOREIGN KEY (assignedToUnit) REFERENCES units(unitID)
);

-- 6. Missions
CREATE TABLE missions (
    missionID NUMBER PRIMARY KEY,
    missionName VARCHAR2(100),
    description VARCHAR2(500),
    startDate DATE,
    endDate DATE,
    status VARCHAR2(20)
);

-- 7. Personnel_Missions (Many-to-Many)
CREATE TABLE personnel_missions (
    personnelID NUMBER,
    missionID NUMBER,
    role VARCHAR2(50),
    PRIMARY KEY (personnelID, missionID),
    FOREIGN KEY (personnelID) REFERENCES personnel(personnelID),
    FOREIGN KEY (missionID) REFERENCES missions(missionID)
);

-- 8. Trainings
CREATE TABLE trainings (
    trainingID NUMBER PRIMARY KEY,
    trainingName VARCHAR2(100),
    description VARCHAR2(300)
);

-- 9. Personnel_Trainings (Many-to-Many)
CREATE TABLE personnel_trainings (
    personnelID NUMBER,
    trainingID NUMBER,
    completionDate DATE,
    PRIMARY KEY (personnelID, trainingID),
    FOREIGN KEY (personnelID) REFERENCES personnel(personnelID),
    FOREIGN KEY (trainingID) REFERENCES trainings(trainingID)
);

-- 10. Medical_Records
CREATE TABLE medical_records (
    recordID NUMBER PRIMARY KEY,
    personnelID NUMBER,
    diagnosis VARCHAR2(200),
    treatment VARCHAR2(200),
    recordDate DATE,
    FOREIGN KEY (personnelID) REFERENCES personnel(personnelID)
);

-- 11. Leaves
CREATE TABLE leaves (
    leaveID NUMBER PRIMARY KEY,
    personnelID NUMBER,
    startDate DATE,
    endDate DATE,
    reason VARCHAR2(200),
    approvalStatus VARCHAR2(20),
    FOREIGN KEY (personnelID) REFERENCES personnel(personnelID)
);

-- 12. Awards
CREATE TABLE awards (
    awardID NUMBER PRIMARY KEY,
    personnelID NUMBER,
    awardName VARCHAR2(100),
    dateAwarded DATE,
    reason VARCHAR2(200),
    FOREIGN KEY (personnelID) REFERENCES personnel(personnelID)
);

-- 13. Disciplinary_Actions
CREATE TABLE disciplinary_actions (
    actionID NUMBER PRIMARY KEY,
    personnelID NUMBER,
    offense VARCHAR2(200),
    actionTaken VARCHAR2(200),
    dateOfAction DATE,
    FOREIGN KEY (personnelID) REFERENCES personnel(personnelID)
);