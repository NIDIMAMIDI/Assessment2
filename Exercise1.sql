-- Exercise 1 (5 marks):

-- Create a database schema for the online consultation and therapy website. The database should contain the following tables:-
-- Doctor table:- The table should contain the attributes such as id, name, specialization, etc.
-- Appointments table:- The table should contain information related to appointments set up by doctors and patients.
-- Patient table:- The table should contain information on patients.
-- Reviews table:- This table should contain reviews posted by patients.

-- Creating and Using a DataBase

CREATE DATABASE OnlineConsultation;
USE OnlineConsultation;

-- Creating Doctor Table

CREATE TABLE Doctor_Details(
	Doc_Id integer primary key not null,
    Doctor_Name varchar(30) not null,
    Specification varchar(30) not null,
    Contact_No integer unique not null,
    Gender varchar(30) not null,
    Doc_Qualification varchar(30) not null
);
SELECT * FROM Doctor_Details;

-- Creating Patient Table

CREATE TABLE Patient_Details(
		Patient_id int primary key not null,
		Patient_Name varchar(30) not null,
        Age int not null,
        Contact_Number integer unique not null,
        Gender varchar(30) not null,
        Health_Problem varchar(30) not null
);
SELECT * FROM Patient_Details;

-- Creating Appoinment Table

CREATE TABLE Appoinments(
	Appointment_Id int primary key not null,
    Doc_id int not null,
    Patient_id int not null,
    Appointment_Date date not null,
    Number_Of_Appointments int not null,
    Foreign key(Doc_Id)REFERENCES Doctor_Details(Doc_Id),
    Foreign key(Patient_id)REFERENCES Patient_Details(Patient_id)
);
SELECT * FROM Appoinments; 

-- Creating Reviews Table

CREATE TABLE Reviews(
	Review_Id_Number int primary key not null,
    Doc_Id integer not null,
    Patient_id int not null,
    Reviewer varchar(30) not null,
    Rating int not null,
    Review_Date date ,
    Review_Description varchar(50) not null,
    Contact_Number int not null unique,
    Foreign Key(Doc_Id) REFERENCES Doctor_Details(Doc_Id),
    Foreign Key(Patient_id) REFERENCES Patient_Details(Patient_id)
);
SELECT * FROM Reviews;