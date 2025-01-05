/*
DATABASE NAME: VALKRYIE ARCHIVES 
CREATED BY: PARNEET KAUR UPPAL
STUDENT ID: 0395181
*/
Use Valkryie_Archives;

--Personnel-- 
INSERT INTO Personnel (officer_name, officer_rank, role)
SELECT DISTINCT
    officer_name,
    rank,
    role
FROM Information_DB
WHERE officer_name IS NOT NULL;

--Equipment
INSERT INTO Equipment (equipment_name, type, quantity, status, personnel_id)
SELECT DISTINCT
    equipment_name,
    type,
    quantity,
    Equipment_status,
    p.personnel_id
FROM Information_DB i
LEFT JOIN Personnel p
    ON i.officer_name = p.officer_name
WHERE equipment_name IS NOT NULL;

--Operations
INSERT INTO Operations (operation_name, operation_type, start_date, end_date, status, outcome, personnel_id)
SELECT DISTINCT
    operation_name,
    operation_type,
    CONVERT(DATE, start_date),
    CONVERT(DATE, end_date),
    Operation_status,
    outcome,
    p.personnel_id
FROM Information_DB i
LEFT JOIN Personnel p
    ON i.officer_name = p.officer_name
WHERE operation_name IS NOT NULL;

--Operational_Personnel
INSERT INTO Operational_Personnel (operation_id, personnel_id, ops_role, assign_date)
SELECT DISTINCT
    o.operation_id,         
    p.personnel_id,         
    i.role,                 
    CONVERT(DATE, i.start_date) 
FROM Information_DB i
LEFT JOIN Operations o
    ON i.operation_name = o.operation_name
LEFT JOIN Personnel p
    ON i.officer_name = p.officer_name
WHERE o.operation_id IS NOT NULL AND p.personnel_id IS NOT NULL;

