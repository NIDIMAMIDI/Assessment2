-- Exercise 2 (5 marks):
-- Contact Table

-- Id		Email		fname		lname		company		Active_flag		opt_out
-- 123		a@a.com		Kian		Seth		ABC			1				1
-- 133		b@a.com		Neha		Seth		ABC			1				0
-- 234		c@c.com		Puru		Malik		CDF			0				0
-- 342		d@d.com		Sid			Maan		TEG			1				0

-- Creating and Inserting values into the table

CREATE TABLE Contact_Table(
	Id integer primary key not null,
    Email varchar(30) not null,
    fname varchar(30) not null,
    lname varchar(30) not null,
    company varchar(30) not null,
    Active_flag boolean not null,
    opt_out boolean not null
);

INSERT INTO Contact_Table(Id, Email, fname, lname, company, Active_Flag, opt_out) values
(123,"a@a.com","Kian","Seth","ABC",	1,1),
(133,"b@a.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);


-- QUESTIONS:
-- 1.Select all columns from the contact table where the active flag is 1
SELECT * FROM Contatct_Table WHERE Active_Flag = 1;

-- 2.Deactivate contacts who are opted out 
UPDATE Contact_Table SET Active_Flag = 0 WHERE opt_out = 1;

-- 3.Delete all the contacts who have the company name as ‘ABC’
 DELETE FROM Contact_Table WHERE company="ABC";
 
-- 4.Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO Contact_Table(Id, Email, fname, lname, company, Active_Flag, opt_out) values
(658,"mili@gmail.com","mili","Seth","DGH",	1,1);

-- 5.Pull out the unique values of the company column 
SELECT DISTINCT(company) from Contact_Table;

-- 6.Update name “mili” to “niti”.
UPDATE Contact_Table SET fname = "niti" WHERE fname = "mili";