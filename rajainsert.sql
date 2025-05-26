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