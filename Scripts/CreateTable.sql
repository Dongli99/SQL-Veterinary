-- Create Owners table
CREATE TABLE Owners (
    owner_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    address VARCHAR(200) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

-- Create Patients table
CREATE TABLE Patients (
    owner_id INT NOT NULL,
    patient_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50) NOT NULL,
    breed VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    weight FLOAT NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES Owners(owner_id)
);

-- Create Medical_Records table
CREATE TABLE Medical_Records (
    patient_id INT NOT NULL,
    record_id INT PRIMARY KEY,
    date_of_visit DATE NOT NULL,
    notes VARCHAR(500) NOT NULL,
    diagnosis VARCHAR(200) NOT NULL,
    treatment VARCHAR(200) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Create Appointments table
CREATE TABLE Appointments (
    staff_id INT NOT NULL,
    patient_id INT NOT NULL,
    vet_id INT NOT NULL,
    appointment_id INT PRIMARY KEY,
    appointment_date DATE NOT NULL,
    appointment_time TIMESTAMP NOT NULL,
    FOREIGN KEY (vet_id) REFERENCES Veterinarians(vet_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- Create Patient_Service table
CREATE TABLE Patient_Service (
    service_id INT NOT NULL,
    patient_id INT NOT NULL,
    PRIMARY KEY (service_id, patient_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);

-- Create Referrals table
CREATE TABLE Referrals (
    appointment_id INT NOT NULL,
    referral_id INT PRIMARY KEY,
    referral_notes VARCHAR(500) NOT NULL,
    referral_vet_id INT NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id),
    FOREIGN KEY (referral_vet_id) REFERENCES Veterinarians(vet_id)
);

-- Create Veterinarians table
CREATE TABLE Veterinarians (
    vet_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    address VARCHAR(200) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

-- Create Staff table
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    address VARCHAR(200) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

-- Create Services table
CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    service_description VARCHAR(200) NOT NULL,
    service_price FLOAT NOT NULL
);

-- Create Inventory table
CREATE TABLE Inventory (
    service_id INT NOT NULL,
    item_id INT,
    item_name VARCHAR(100) NOT NULL,
    item_description VARCHAR(200) NOT NULL,
    item_price FLOAT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (service_id, item_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);