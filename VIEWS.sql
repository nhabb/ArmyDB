---------------------------------------
-- Medical report for all personnel ---
---------------------------------------

CREATE VIEW View_Medical_Records AS
SELECT 
    p.firstname,
    p.lastname,
    med.diagnosis,
    med.treatment
FROM 
    MEDICAL_RECORDS med
JOIN 
    Personnel p ON p.PERSONNELID = med.PERSONNELID;


SELECT * FROM View_Medical_Records;


-----------------------------------------------------------------------------
--Show all offenses done by personnel and the action taken in this regard ---
-----------------------------------------------------------------------------

CREATE VIEW View_Offense AS
SELECT 
    p.FIRSTNAME, 
    p.LASTNAME ,
    d.OFFENSE,
    d.ACTIONTAKEN
FROM  
    DISCIPLINARY_ACTIONS d 
JOIN 
    PERSONNEL p ON p.PERSONNELID = d.PERSONNELID;

SELECT * FROM View_Offense;