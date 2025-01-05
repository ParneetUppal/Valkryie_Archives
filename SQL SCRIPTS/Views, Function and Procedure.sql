/*
DATABASE NAME: VALKRYIE ARCHIVES 
CREATED BY: PARNEET KAUR UPPAL
STUDENT ID: 0395181
*/

USE Valkryie_Archives;
Go

--View Creation -- 

--Gets the top ranking officers list as a view--
CREATE VIEW toprankingofficers_View AS
SELECT personnel_id, officer_name, officer_rank 
FROM Personnel
WHERE officer_rank IN ('Colonel','Captain','Major');

GO


--Views to check failed outcome Missions with their respective personnel operations-- 
CREATE VIEW FailedOutcome_View AS
SELECT o.operation_id,o.personnel_id, p.officer_name,o.operation_name,o.outcome
FROM Operations o
JOIN Operational_Personnel op ON o.operation_id = op.operation_id
JOIN Personnel p ON op.personnel_id = p.personnel_id
WHERE o.outcome = 'Failed';
GO

--TEST--
SELECT * FROM toprankingofficers_View;
SELECT * FROM FailedOutcome_View;


--FUNCTION-- 
DROP FUNCTION IF EXISTS EnlistActiveOperations;

--Enlists all the active operations from the Operations Table
GO
CREATE OR ALTER FUNCTION EnlistActiveOperations()
Returns Table 
AS 
RETURN(
SELECT operation_id,
	   operation_name,
	   operation_type,
	   start_date,
	   status
FROM Operations

WHERE status = 'ACTIVE'
);
GO

--TEST--
SELECT *
FROM EnlistActiveOperations();


SELECT operation_id, operation_name
FROM EnlistActiveOperations()
WHERE operation_type = 'Covert';
GO

--STORED PROCEDURE
DROP PROCEDURE IF EXISTS Assign_Personnel;
GO
--Can be used to assign various Personnel to operations.
CREATE OR ALTER PROCEDURE Assign_Personnel
    @operation_id INT,
    @personnel_id INT,
    @ops_role VARCHAR(50),
    @assign_date DATE = NULL 
AS 
BEGIN
    IF(@assign_date IS NULL)
    BEGIN
        SET @assign_date = CAST(GETDATE() AS DATE);
    END

    INSERT INTO Operational_Personnel (operation_id, personnel_id, ops_role, assign_date)
    VALUES (@operation_id, @personnel_id, @ops_role, @assign_date);
END
GO

--TEST--
EXEC Assign_Personnel @operation_id = 2, @personnel_id = 5 , @ops_role = 'Leader'