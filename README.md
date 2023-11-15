# SQL-Veterinary

## Overview

This project simulates the entire process of gathering requirements, designing the database, building the database, and using the database in a veterinary clinic.

## Files and Folder

- **Database_Design.pdf**

  - Requirement, Solution and ERD Diagram
- **Final_Report.pdf**

  - Summary of the project

- **Scripts**

  - Create tables
  - Insert values
  - Utilize data

## Usage

- Install [Oracle SQL Developer](https://www.oracle.com/ca-en/database/sqldeveloper/)
- Drag CreateTable.sql to SQL Developer, run the script (*F5*).
- Drag InsertData.sql to SQL Developer, run the script (*F5*).
- Drag Selects.sql, select and run any chunk.

## Examples

```sql
-- Get the name and species of all patients owned by Jane Doe.
SELECT name, species 
FROM patients 
WHERE owner_id = (
    SELECT owner_id 
    FROM owners 
    WHERE first_name = 'Jane' AND last_name = 'Doe'
);
```

![Jane'sPets](/imgs/image.png)

```sql
-- Get the owner name, patient name and diagnosis of all patients who have been diagnosed with an upper respiratory infection.
SELECT o.first_name||' '|| o.last_name AS owner, p.name, m.diagnosis 
FROM medical_Records m
JOIN patients p ON m.patient_id = p.patient_id
JOIN owners o ON o.owner_id = p.owner_id
WHERE m.diagnosis = 'Upper respiratory infection';
```

![Alt text](/imgs/image-1.png)

```sql
-- Get the full name, and email address of all owners who have more than one patient.
SELECT first_name||' '|| last_name AS full_name, email
FROM owners
WHERE owner_id IN 
    (SELECT o.owner_id
     FROM owners o 
     JOIN patients p ON o.owner_id = p.owner_id
     GROUP BY o.owner_id
     HAVING count(p.patient_id)>1);
```

![Alt text](/imgs/image-2.png)

```sql
-- Get the name, age, and weight of the oldest patient in the database.
SELECT name, age, species, breed, weight 
FROM patients 
WHERE age = (
    SELECT MAX(age) 
    FROM patients
);
```

![Alt text](/imgs/image-3.png)

```sql
-- List the patient names, owner names, and appointment dates for all appointments in the 2nd half of March 2023.
SELECT p.name, o.first_name, o.last_name, a.appointment_date 
FROM patients p
JOIN owners o
ON p.owner_id = o.owner_id 
JOIN appointments a
ON p.patient_id = a.patient_id 
WHERE a.appointment_date BETWEEN '2023-03-15' AND '2023-03-31';
```

![Alt text](/imgs/image-4.png)

```sql
-- list all the items with number less than 10 in inventory, and the corresponding service name
SELECT s.service_name, i.item_name, i.quantity, i.item_price
FROM services s JOIN inventory i
ON s.service_id = i.service_id
WHERE i.quantity < 10;
```

![Alt text](/imgs/image-5.png)

```sql
-- List the names of all patients that have ever had an appointment.
SELECT DISTINCT p.name, to_char(a.appointment_date,'MM-DD')AS appointment_date, to_char(a.appointment_time,'HH:MM') AS appointment_time
FROM patients p
JOIN appointments a
ON p.patient_id = a.patient_id;
```

![Alt text](/imgs/image-6.png)