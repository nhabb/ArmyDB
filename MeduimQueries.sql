---------------------------------------------------
 --Selelct all personnel with their latest traning --
---------------------------------------------------

SELECT p.FIRSTNAME, p.LASTNAME, MAX(pm.COMPLETIONDATE) AS latest_date
FROM personnel p
NATURAL JOIN personnel_trainings pm
GROUP BY p.FIRSTNAME, p.LASTNAME;

--------------------------------------------------------------
--Show all missions along with participating personnel names--
--------------------------------------------------------------

SELECT p.firstName,p.lastName,m.missionName
FROM personnel p
JOIN personnel_missions pm  ON p.PERSONNELID = pm.PERSONNELID
JOIN missions m ON pm.MISSIONID = m.MISSIONID;

-----------------------------------------------------
--Shows all units with equipment disaptched to them--
-----------------------------------------------------

SELECT u.UNITNAME
FROM UNITS u JOIN EQUIPMENT e
ON u.UNITID = e.ASSIGNEDTOUNIT;

--------------------------------------
--Shows number of equipment per unit--
--------------------------------------

SELECT u.unitName , COUNT(e.serialNumber) as equipmentperunit
FROM UNITS u
Left JOIN EQUIPMENT e ON u.UNITID = e.ASSIGNEDTOUNIT
GROUP BY u.UNITNAME;


--------------------------------------------------------------------------
--Show all disciplinary actions along with the personnel’s rank and unit--
--------------------------------------------------------------------------

SELECT p.FIRSTNAME,p.LASTNAME,u.unitName,r.rankName,da.offense
FROM PERSONNEL p JOIN RANKS r ON p.RANKID = r.RANKID
JOIN UNITS u ON u.UNITID = p.UNITID
JOIN DISCIPLINARY_ACTIONS da ON p.PERSONNELID = da.PERSONNELID;

-----------------------------------
--SHOW EACH UNIT IN WHICH BASE  --
-----------------------------------

SELECT u.UNITNAME, b.baseName
FROM UNITS u JOIN BASES b
ON u.BASEID = b.BASEID;
