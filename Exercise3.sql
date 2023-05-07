-- Exercise 3 (10 marks):

-- Sample table: salesman

 -- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14
--         5007 | Paul Adam  | Rome     |       0.13
--         5003 | Lauson Hen | San Jose |       0.12

-- Creating and Inserting Values into a Salesman Table

CREATE TABLE Salesman(
	salesman_id int primary key not null,
    name varchar(30) not null,
    city varchar(30) not null,
    commission float not null
);
INSERT INTO Salesman(salesman_id,name,city,commission) VALUES
(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);

-- Sample table: customer

-- customer_id |   cust_name    |    city    | grade | salesman_id 

-- -------------+----------------+------------+-------+-------------
--      3002 | Nick Rimando   | New York   |   100 |        5001
--      3007 | Brad Davis     | New York   |   200 |        5001
-- 		3005 | Graham Zusi    | California |   200 |        5002
-- 		3008 | Julian Green   | London     |   300 |        5002
--    	3004 | Fabian Johnson | Paris      |   300 |        5006
--      3009 | Geoff Cameron  | Berlin     |   100 |        5003
--      3003 | Jozy Altidor   | Moscow     |   200 |        5007
--    	3001 | Brad Guzan     | London     |       |        5005

-- Creating and Inserting Values into a Customer1 Table

CREATE TABLE Customer(
	customer_id int primary key not null,
    cust_name varchar(30) not null,
    city varchar(30) not null,
    grade int not null,
    salesman_id int not null,
    FOREIGN KEY(salesman_id) REFERENCES Salesman(salesman_id)
);

INSERT INTO  Customer(customer_id,cust_name,city,grade,salesman_id) values
(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New York",200 ,5001),
(3005,"Graham Zusi ","California",200 ,5002),
(3008,"Julian Green","London",300,5002),
(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",0,5005);


-- Write a SQL query to find those customers with a grade less than 100. It should return cust_name, customer city, grade, salesman, and salesman city.
-- The result should be ordered by ascending customer_id.

SELECT c.cust_name as cust_name, c.city as city, c.grade as grade, s.name as salesman, s.city as salesman_city from Customer c, Salesman s
WHERE c.grade < 100 and c.salesman_id = s.salesman_id 
ORDER BY customer_id;