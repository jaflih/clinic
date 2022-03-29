/* Database schema to keep the structure of entire database. */

CREATE TABLE patients(
	id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
	date_of_birth DATE
);

