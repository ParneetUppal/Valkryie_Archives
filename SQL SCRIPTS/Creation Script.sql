/*
DATABASE NAME: VALKRYIE ARCHIVES 
CREATED BY: PARNEET KAUR UPPAL
STUDENT ID: 0395181
*/

-- DROP STMTS FOR TABLES --
DROP TABLE IF EXISTS Operational_Personnel;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS Operations;
DROP TABLE IF EXISTS Personnel;


-- Personnel Table
CREATE TABLE Personnel (
    personnel_id INT IDENTITY(1,1) PRIMARY KEY,
    officer_name VARCHAR(100),
    officer_rank VARCHAR(50),
    role VARCHAR(50)
);

-- Equipment Table
CREATE TABLE Equipment (
    equipment_id INT IDENTITY(1,1) PRIMARY KEY,
    personnel_id INT,
    equipment_name VARCHAR(100),
    type VARCHAR(50),
    quantity INT,
	--Constraint--
    status VARCHAR(50) CHECK(status IN ('Available','Assigned','Under Maintenance')),
    FOREIGN KEY (personnel_id) REFERENCES Personnel(personnel_id)
);

--Operations Table
CREATE TABLE Operations (
    operation_id INT IDENTITY(1,1)PRIMARY KEY,
    personnel_id INT,
    operation_name VARCHAR(100),
    operation_type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    outcome VARCHAR(255),
    FOREIGN KEY (personnel_id) REFERENCES Personnel(personnel_id),
	--Constraint--
	CHECK (end_date >= start_date)
);

--TEST FOR CONSTRAINT
--INSERT INTO Operations (personnel_id, operation_name, operation_type, start_date, end_date, status, outcome) 
--VALUES
--(2,'Wannacry','Cyber Strike','2024-12-13','2024-12-15',NUll,Null);

-- Operational_Personnel Table
CREATE TABLE Operational_Personnel (
    ops_id INT IDENTITY(1,1) PRIMARY KEY,
    operation_id INT,
    personnel_id INT,
    ops_role VARCHAR(50),
    assign_date DATE,
    FOREIGN KEY (operation_id) REFERENCES Operations(operation_id),
    FOREIGN KEY (personnel_id) REFERENCES Personnel(personnel_id)
);

CREATE TABLE ArchivedOperations (
    operation_id INT PRIMARY KEY, 
    personnel_id INT,             
    operation_name NVARCHAR(255), 
    operation_type NVARCHAR(100),
    start_date DATE,             
    end_date DATE,                
    status NVARCHAR(50),          
    outcome NVARCHAR(255)         
);
GO

DROP trigger if exists ArchiveCompletedOperations
GO
CREATE OR ALTER TRIGGER ArchiveCompletedOperations
ON Operations
AFTER UPDATE
AS
BEGIN
    INSERT INTO ArchivedOperations (operation_id, personnel_id, operation_name, operation_type, start_date, end_date, status, outcome)
    SELECT operation_id, personnel_id, operation_name, operation_type, start_date, end_date, status, outcome
    FROM inserted
    WHERE status = 'Complete';
END;


--TEST FOR TRIGGER
--GO
--UPDATE Operations
--SET
--    operation_name = 'Operation Hunted',
--    operation_type = 'Survival',
--    start_date = NULL,
--    end_date = NULL,
--    status = 'Complete',
--    outcome = NULL
--WHERE
--    operation_id = 3; 







