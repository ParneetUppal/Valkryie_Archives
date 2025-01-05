/*
DATABASE NAME: VALKRYIE ARCHIVES 
CREATED BY: PARNEET KAUR UPPAL
STUDENT ID: 0395181
*/

Use Valkryie_Archives;
Go
--INSERT STATEMENTS--
--Personnel--

INSERT INTO Personnel (officer_name, officer_rank, role) 
VALUES
( 'Jack Ryan', 'Captain', 'Intelligence Analyst'),
( 'John Clark', 'Major', 'Special Operations Leader'),
( 'Domingo Chavez', 'Lieutenant', 'Counter-Terrorism Expert'),
( 'Dominic Caruso', 'Sergeant', 'Field Agent'),
( 'Sam Fisher', 'Colonel', 'Black Ops Specialist'),
( 'John Price', 'Captain', 'Task Force 141 Leader'),
( 'Kyle Garrick', 'Lieutenant', 'Recon Specialist'),
( 'Simon Riley', 'Major', 'Covert Operative'),
( 'Farah Karim', 'Colonel', 'Freedom Fighter'),
( 'Alex Keller', 'Sergeant', 'Special Forces Operative'),
( 'Alex Mason', 'Captain', 'CIA Operative'),
( 'Frank Woods', 'Sergeant', 'Field Operative'),
( 'Jason Hudson', 'Colonel', 'CIA Handler'),
( 'David Mason', 'Lieutenant', 'Cyber Operations Specialist'),
( 'Viktor Reznov', 'Major', 'Tactical Leader');

--Equipment--
INSERT INTO Equipment (personnel_id, equipment_name, type, quantity, status) 
VALUES
( Null, 'M4 Carbine', 'Weapon', 1, 'Assigned'),      
( Null, 'Night Vision Goggles', 'Optics', 2, 'Assigned'), 
( Null, 'Tactical Vest', 'Gear', 1, 'Available'),     
( Null, 'Radio Set', 'Communication', 1, 'Assigned'),
( Null, 'Suppressed Pistol', 'Weapon', 1, 'Assigned'), 
( NULL, 'First Aid Kit', 'Medical', 10, 'Available'),
( NULL, 'Frag Grenade', 'Explosive', 5, 'Under Maintenance'), 
( Null, 'Thermal Scope', 'Optics', 1, 'Assigned'),     
( Null, 'C4 Explosives', 'Explosive', 2, 'Assigned'),  
( Null, 'Portable Drone', 'Surveillance', 1, 'Assigned'); 


--Operations--
INSERT INTO Operations (personnel_id, operation_name, operation_type, start_date, end_date, status, outcome) 
VALUES
( NULL, 'Operation All Ghillied Up', 'Infiltration', NULL, NULL, NULL, NULL),
( NULL, 'Operation Blackout', 'Assault', NULL, NULL, NULL, NULL),
( NULL, 'Operation Hunted', 'Survival', NULL, NULL, NULL, NULL),
( NULL, 'Operation Death From Above', 'Air Support', NULL, NULL, NULL, NULL),
( NULL, 'Operation Charlie Don�t Surf', 'Reconnaissance', NULL, NULL, NULL, NULL),
( NULL, 'Operation Vorkuta', 'Escape', NULL, NULL, NULL, NULL),
( NULL, 'Operation Payback', 'Revenge', NULL, NULL, NULL, NULL),
( NULL, 'Operation WMD', 'Sabotage', NULL, NULL, NULL, NULL),
( NULL, 'Operation Executive Order', 'Destruction', NULL, NULL, NULL, NULL),
( NULL, 'Operation Going Dark', 'Covert', NULL, NULL, NULL, NULL);



--Operational_Personnel--
INSERT INTO Operational_Personnel (operation_id, personnel_id, ops_role, assign_date) 
VALUES
( 1, 1, 'Team Leader', '2024-01-15'), 
( 2, 2, 'Field Commander', '2024-02-10'), 
( 3, 3, 'Recon Specialist', '2024-03-05'), 
( 4, 4, 'Communications Officer', '2024-04-10'), 
( 5, 5, 'Covert Operative', '2024-05-01'), 
( 6, 6, 'Escape Specialist', '2024-06-15'), 
( 7, 7, 'Strategic Advisor', '2024-07-10'), 
( 8, 8, 'Sabotage Expert', '2024-08-05'),
( 9, 9, 'Demolitions Expert', '2024-09-01'), 
( 10, 10, 'Covert Ops Leader', '2024-10-15'); 

