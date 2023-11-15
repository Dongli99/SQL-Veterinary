-- Get the name, species, and breed of all dogs in the database.
SELECT name, species, breed, weight
FROM Patients 
WHERE species = 'Dog';

-- count the number of pets based on the province they live
SELECT o.state, count(p.patient_id)
FROM owners o JOIN patients p
ON o.owner_id = p.owner_id
GROUP BY o.state;

-- Get the name and species of all patients owned by Jane Doe.
SELECT name, species 
FROM patients 
WHERE owner_id = (
    SELECT owner_id 
    FROM owners 
    WHERE first_name = 'Jane' AND last_name = 'Doe'
);

-- Get the owner name, patient name and diagnosis of all patients 
-- who have been diagnosed with an upper respiratory infection.
SELECT o.first_name||' '|| o.last_name AS owner, p.name, m.diagnosis 
FROM medical_Records m
JOIN patients p ON m.patient_id = p.patient_id
JOIN owners o ON o.owner_id = p.owner_id
WHERE m.diagnosis = 'Upper respiratory infection';

-- Get the full name, and email address of all owners who have more than one patient.
SELECT first_name||' '|| last_name AS full_name, email
FROM owners
WHERE owner_id IN 
    (SELECT o.owner_id
     FROM owners o 
     JOIN patients p ON o.owner_id = p.owner_id
     GROUP BY o.owner_id
     HAVING count(p.patient_id)>1);

-- Get the name, age, and weight of the oldest patient in the database.
SELECT name, age, species, breed, weight 
FROM patients 
WHERE age = (
    SELECT MAX(age) 
    FROM patients
);

-- List the names of all patients that have ever had an appointment.
SELECT DISTINCT p.name, to_char(a.appointment_date,'MM-DD')AS appointment_date, to_char(a.appointment_time,'HH:MM') AS appointment_time
FROM patients p
JOIN appointments a
ON p.patient_id = a.patient_id;

-- List the patient names, owner names, and appointment dates for all appointments in the 2nd half of March 2023.
SELECT p.name, o.first_name, o.last_name, a.appointment_date 
FROM patients p
JOIN owners o
ON p.owner_id = o.owner_id 
JOIN appointments a
ON p.patient_id = a.patient_id 
WHERE a.appointment_date BETWEEN '2023-03-15' AND '2023-03-31';

-- retrieve the name and species of all patients who have not been diagnosed with anything.
SELECT DISTINCT p.name, p.species
FROM patients p
LEFT JOIN medical_Records m
    ON p.patient_id = m.patient_id
WHERE m.diagnosis IS NULL OR m.diagnosis = 'Healthy';

-- list all the items with number less than 10 in inventory, and the corresponding service name
SELECT s.service_name, i.item_name, i.quantity, i.item_price
FROM services s JOIN inventory i
ON s.service_id = i.service_id
WHERE i.quantity < 10;
