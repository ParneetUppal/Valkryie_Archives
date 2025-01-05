# Valkyrie Archives - Military Archival Database

## Project Description

The **Valkyrie Archives** is a fictional military archival database designed to manage and analyze data related to military missions, resources, and personnel. The system is structured to capture the intricate workings of a military organization by managing five key tables:

- **Equipment**: Tracks equipment inventory and issuance.
- **Personnel**: Manages details about military personnel, including rank and roles.
- **Operations**: Logs details of missions and their execution.
- **Incidents**: Records incidents occurring during missions.
- **Outcomes**: Tracks the results of missions and their impact.

The database incorporates **triggers**, **stored procedures**, and **business rules** to simulate real-world military processes, such as automating mission assignments and resource tracking.

---

## Business Case

This database project simulates how military operations might be tracked and managed behind the scenes in governmental or confidential organizations. Inspired by a fascination with military systems and books like Tom Clancy’s *The Hunt for Red October*, this project showcases the importance of data management in ensuring accountability and operational success.

The database offers a conceptual model of how military organizations could handle logistical challenges, such as:

- Tracking personnel based on rank and mission history.
- Monitoring resource allocation to ensure proper accountability.
- Recording mission outcomes for performance analysis.

### Target Audience

The target audience includes governments, military organizations, and agencies tasked with managing operations and resources efficiently.

---

## Key Features

1. **Business Rules**:
   - Equipment can only be issued if its status is "Available."
   - Multiple personnel can be assigned to one mission.
   - Equipment is restricted to one personnel at a time, but personnel can handle multiple equipment.

2. **Triggers**:
   - Automatically update equipment status when assigned or returned.
   - Archive completed missions into a historical table.

3. **Stored Procedures**:
   - Assign missions to personnel based on their rank and mission success rate.
   - Automate resource tracking during operations.

---

## Entity Relationship Diagram (ERD)

The database design includes relationships between the following entities:
- **Personnel**: Tracks individuals and their details.
- **Equipment**: Logs inventory, types, and availability.
- **Operations**: Stores mission details.
- **Incidents**: Records operational issues.
- **Outcomes**: Summarizes the results of missions.

![ERD Diagram](ERD/DB%20ERD.drawio.png)

---

Developer Name - Parneet Kaur Uppal


