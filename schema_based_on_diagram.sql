/* Database schema to keep the structure of entire database. */
CREATE DATABASE Clinic;

CREATE TABLE patients(
	id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
	date_of_birth DATE
);

CREATE TABLE medical_histories (
id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
admitted_at TIMESTAMP,
patient_id INT,
status VARCHAR(255));

ALTER TABLE medical_histories ADD CONSTRAINT id_fk FOREIGN KEY (patient_id) REFERENCES patients(id);

CREATE TABLE invoices(
	id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL,
	generated_at TIMESTAMP,
	payed_at TIMESTAMP,
	medical_history_id int
);

ALTER TABLE invoices 
ADD CONSTRAINT medical_histories_constraint 
FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id);

