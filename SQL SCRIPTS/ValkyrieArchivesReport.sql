/*
DATABASE NAME: VALKRYIE ARCHIVES 
CREATED BY: PARNEET KAUR UPPAL
STUDENT ID: 0395181
*/

use ValkryieArchives;

DECLARE @operationID INT = $(operationID);

SELECT 
    o.Operation_name,
    o.Operation_type,
    o.Status,
    o.Outcome,
    p.Officer_Name AS PersonnelAssigned,
    e.equipment_name AS EquipmentUsed
FROM Operations o
LEFT JOIN Operational_Personnel op ON o.Operation_Id = op.Operation_Id
LEFT JOIN Personnel p ON op.Personnel_Id = p.Personnel_Id
LEFT JOIN Equipment e ON p.Personnel_Id = e.Personnel_Id
WHERE o.Operation_Id = @operationID;


