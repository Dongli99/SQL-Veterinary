-- INSERT Owners table

INSERT INTO Owners VALUES (1, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', '123 Main St', 'Etobicoke', 'ON', 'M8V 0B1');
INSERT INTO Owners VALUES (2, 'Jane', 'Doe', 'janedoe@example.com', '234-567-8901', '456 Elm St', 'Oshawa', 'ON', 'L1J 3L1');
INSERT INTO Owners VALUES (3, 'Bob', 'Smith', 'bobsmith@example.com', '345-678-9012', '789 Maple St', 'Scarborough', 'ON', 'M1S 3K5');
INSERT INTO Owners VALUES (4, 'Alice', 'Johnson', 'alicejohnson@example.com', '456-789-0123', '1010 Oak Ave', 'Peterborough', 'ON', 'K9J 8R8');
INSERT INTO Owners VALUES (5, 'David', 'Lee', 'davidlee@example.com', '567-890-1234', '2468 Cherry Blvd', 'Ormeaux', 'QC', 'H9G 1K1');

-- INSERT Patients table

INSERT INTO Patients VALUES (1, 1, 'Buddy', 'Dog', 'Labrador Retriever', 5, 'Male', 70);
INSERT INTO Patients VALUES (1, 2, 'Lucy', 'Dog', 'Golden Retriever', 3, 'Female', 55);
INSERT INTO Patients VALUES (1, 3, 'Mittens', 'Cat', 'Siamese', 2, 'Female', 8);
INSERT INTO Patients VALUES (2, 4, 'Max', 'Dog', 'German Shepherd', 4, 'Male', 80);
INSERT INTO Patients VALUES (2, 5, 'Bella', 'Dog', 'Poodle', 6, 'Female', 45);
INSERT INTO Patients VALUES (2, 6, 'Simba', 'Cat', 'Domestic Shorthair', 1, 'Male', 12);
INSERT INTO Patients VALUES (3, 7, 'Rocky', 'Dog', 'Boxer', 2, 'Male', 60);
INSERT INTO Patients VALUES (3, 8, 'Lola', 'Dog', 'French Bulldog', 1, 'Female', 25);
INSERT INTO Patients VALUES (4, 9, 'Toby', 'Dog', 'Beagle', 3, 'Male', 30);
INSERT INTO Patients VALUES (5, 10, 'Molly', 'Dog', 'Dachshund', 7, 'Female', 18);

-- INSERT Medical_Records table

INSERT INTO Medical_Records VALUES (1, 1, '2022-09-01', 'Routine check-up', 'Healthy', 'None');
INSERT INTO Medical_Records VALUES (1, 2, '2022-10-03', 'Vaccinations', 'Healthy', 'Vaccinations');
INSERT INTO Medical_Records VALUES (2, 3, '2022-11-05', 'Annual check-up', 'Healthy', 'None');
INSERT INTO Medical_Records VALUES (3, 4, '2022-12-22', 'Sneezing and coughing', 'Upper respiratory infection', 'Antibiotics');
INSERT INTO Medical_Records VALUES (4, 5, '2023-01-08', 'Limping', 'Sprained ankle', 'Rest and pain medication');
INSERT INTO Medical_Records VALUES (5, 6, '2023-01-16', 'Annual check-up', 'Healthy', 'None');
INSERT INTO Medical_Records VALUES (6, 7, '2023-02-11', 'Vomiting', 'Gastroenteritis', 'Fluids and bland diet');
INSERT INTO Medical_Records VALUES (7, 8, '2023-02-18', 'Ear infection', 'Ear infection', 'Antibiotics and ear drops');
INSERT INTO Medical_Records VALUES (8, 9, '2023-02-23', 'Dental cleaning', 'Healthy', 'Dental cleaning');
INSERT INTO Medical_Records VALUES (9, 10, '2023-03-07', 'Annual check-up', 'Healthy', 'None');
INSERT INTO Medical_Records VALUES (10, 11, '2023-03-15', 'Broken leg', 'Fractured leg', 'Surgery and recovery');

-- INSERT Appointments table

INSERT INTO Appointments VALUES (1, 2, 3, 1001, DATE '2022-09-01', TIMESTAMP '2023-03-15 09:00:00');
INSERT INTO Appointments VALUES (2, 4, 1, 1002, DATE '2023-03-16', TIMESTAMP '2023-03-16 14:30:00');
INSERT INTO Appointments VALUES (3, 1, 2, 1003, DATE '2023-03-17', TIMESTAMP '2023-03-17 11:15:00');
INSERT INTO Appointments VALUES (2, 3, 3, 1004, DATE '2023-03-18', TIMESTAMP '2023-03-18 16:45:00');
INSERT INTO Appointments VALUES (1, 5, 2, 1005, DATE '2023-03-19', TIMESTAMP '2023-03-19 10:00:00');
INSERT INTO Appointments VALUES (3, 2, 1, 1006, DATE '2023-03-20', TIMESTAMP '2023-03-20 13:00:00');
INSERT INTO Appointments VALUES (1, 4, 3, 1007, DATE '2023-03-21', TIMESTAMP '2023-03-21 10:45:00');
INSERT INTO Appointments VALUES (2, 5, 1, 1008, DATE '2023-03-22', TIMESTAMP '2023-03-22 15:15:00');
INSERT INTO Appointments VALUES (3, 3, 2, 1009, DATE '2023-03-23', TIMESTAMP '2023-03-23 11:30:00');
INSERT INTO Appointments VALUES (1, 1, 3, 1010, DATE '2023-03-24', TIMESTAMP '2023-03-24 09:30:00');

-- INSERT Patient_Service table

INSERT INTO Patient_Service (service_id, patient_id) VALUES (1, 1);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (1, 2);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (2, 1);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (2, 2);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (3, 9);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (4, 5);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (5, 1);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (5, 2);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (5, 6);
INSERT INTO Patient_Service (service_id, patient_id) VALUES (5, 10);

-- INSERT Referrals table

INSERT INTO Referrals VALUES (1001, 1, 'Referral notes for appointment 1001', 2);
INSERT INTO Referrals VALUES (1003, 2, 'Referral notes for appointment 1003', 1);
INSERT INTO Referrals VALUES (1005, 3, 'Referral notes for appointment 1005', 3);
INSERT INTO Referrals VALUES (1007, 4, 'Referral notes for appointment 1007', 1);
INSERT INTO Referrals VALUES (1009, 5, 'Referral notes for appointment 1009', 2);

-- INSERT Veterinarians table

INSERT INTO Veterinarians VALUES (1, 'Fan', 'Yang', 'fan.yang@gmail.com', '647-555-1212', '123 Main St', 'Toronto', 'ON', 'M1H 1A1');
INSERT INTO Veterinarians VALUES (2, 'Qi', 'Yang', 'qi.yang@gmail.com', '647-555-2323', '456 Queen St', 'Ottawa', 'ON', 'K1P 1N9');
INSERT INTO Veterinarians VALUES (3, 'Dongli', 'Liu', 'dongli.liu@gmail.com', '647-555-3434', '789 Yonge St', 'Mississauga', 'ON', 'L4Y 1Y5');
INSERT INTO Veterinarians VALUES (4, 'Liam', 'Smith', 'liam.smith@gmail.com', '647-555-4545', '321 Bay St', 'Brampton', 'ON', 'L6V 4P9');
INSERT INTO Veterinarians VALUES (5, 'Sophia', 'Lee', 'sophia.lee@gmail.com', '647-555-5656', '654 King St', 'Hamilton', 'ON', 'L8P 1C1');

-- INSERT Staff table

INSERT INTO Staff VALUES (1, 'Abdoullahi', 'Isse', 'abdoullahi@example.com', '647-555-1234', '123 Main St', 'Toronto', 'ON', 'M1M 1M1');
INSERT INTO Staff VALUES (2, 'Aetria', 'Rescan', 'aetria@example.com', '647-555-2345', '456 Queen St', 'Toronto', 'ON', 'M2M 2M2');
INSERT INTO Staff VALUES (3, 'Ersan', 'Cam', 'ersan@example.com', '647-555-3456', '789 King St', 'Mississauga', 'ON', 'L1L 1L1');
INSERT INTO Staff VALUES (4, 'Amanda', 'Chen', 'evanWhite@example.com', '647-555-4567', '1010 Bay St', 'Toronto', 'ON', 'M3M 3M3');
INSERT INTO Staff VALUES (5, 'Gabriel', 'Normand', 'gabrielnormand@example.com', '647-555-5678', '555 Yonge St', 'Markham', 'ON', 'L2L 2L2');

-- INSERT Services table

INSERT INTO Services VALUES (1, 'Vaccinations', 'Routine vaccinations for pets', 50.00);
INSERT INTO Services VALUES (2, 'Flea and Tick Prevention', 'Preventative measures against fleas and ticks', 35.00);
INSERT INTO Services VALUES (3, 'Dental Cleaning', 'Professional cleaning and polishing of pet teeth', 150.00);
INSERT INTO Services VALUES (4, 'Surgery', 'Surgical procedures for pets', 500.00);
INSERT INTO Services VALUES (5, 'Checkup', 'Routine checkup for pets', 75.00);

-- INSERT Inventory table

INSERT INTO Inventory VALUES (1, 1, 'Dog Vaccination', 'Vaccination for dogs', 30.00, 10);
INSERT INTO Inventory VALUES (1, 2, 'Cat Vaccination', 'Vaccination for cats', 30.00, 10);
INSERT INTO Inventory VALUES (2, 3, 'Flea and Tick Collar', 'Collar to prevent flea and tick infestations', 20.00, 20);
INSERT INTO Inventory VALUES (2, 4, 'Flea and Tick Shampoo', 'Shampoo to prevent flea and tick infestations', 15.00, 30);
INSERT INTO Inventory VALUES (3, 5, 'Dental Cleaning Kit', 'Kit for cleaning pet teeth at home', 50.00, 5);
INSERT INTO Inventory VALUES (3, 6, 'Dental Chew Toys', 'Chew toys that help clean pet teeth', 10.00, 20);
INSERT INTO Inventory VALUES (4, 7, 'Spay/Neuter Surgery', 'Surgical sterilization of pets', 400.00, 5);
INSERT INTO Inventory VALUES (4, 8, 'Tumor Removal Surgery', 'Surgical removal of pet tumors', 600.00, 3);
INSERT INTO Inventory VALUES (5, 9, 'Routine Checkup for Dog', 'Routine checkup for dogs', 50.00, 15);
INSERT INTO Inventory VALUES (5, 10, 'Routine Checkup for Cat', 'Routine checkup for cats', 50.00, 15);

