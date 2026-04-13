-- create database
CREATE database company_db; 
USE company_db;
-- create companies table
create table companies (company_id INT PRIMARY KEY, 
company_name VARCHAR(255) NOT NULL);
-- create departments table
create table departments (department_id INT PRIMARY KEY,
department_name VARCHAR(255) NOT NULL,
company_id INT, FOREIGN KEY (company_id) REFERENCES companies(company_id));
-- create employees table
create table employees (employee_id INT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
department_id INT, FOREIGN KEY (department_id) REFERENCES departments(department_id),
salary DECIMAL(15,2) NOT NULL,
hire_date DATE NOT NULL,
manager_id INT NULL,
job_title VARCHAR(255) NOT NULL);

-- INSERTING VALUES IN COMPANIES
INSERT INTO companies VALUES
(1,'TechNova Pvt Ltd'),
(2,'DataSphere Solutions'),
(3,'NextGen Analytics'),
(4,'CloudMatrix Systems');

-- INSERTING VALUES IN DEPARTMENTS
INSERT INTO departments VALUES
(101,'HR',1),
(102,'Engineering',1),
(103,'Sales',1),
(201,'Marketing',2),
(202,'Finance',2),
(203,'Customer Support',2),
(301,'Data Science',3),
(302,'AI Research',3),
(401,'Cloud Engineering',4),
(402,'Product Management',4);

-- INSERTING VALUES IN EMPLOYEES
INSERT INTO employees VALUES
(1,'Amit','Sharma',102,120000,'2019-01-15',NULL,'Engineering Director'),
(2,'Neha','Verma',101,60000,'2021-03-10',1,'HR Manager'),
(3,'Rahul','Singh',102,90000,'2022-02-20',1,'Senior Software Engineer'),
(4,'Priya','Mehta',103,70000,'2021-11-12',1,'Sales Manager'),
(5,'Karan','Malhotra',201,85000,'2020-07-18',NULL,'Marketing Manager'),
(6,'Sneha','Kapoor',202,95000,'2018-09-25',NULL,'Finance Director'),
(7,'Rohit','Agarwal',301,110000,'2021-04-01',NULL,'Lead Data Scientist'),
(8,'Pooja','Nair',301,80000,'2022-12-10',7,'Data Analyst'),
(9,'Arjun','Patel',102,75000,'2023-02-14',3,'Backend Developer'),
(10,'Anjali','Gupta',103,65000,'2022-08-30',4,'Sales Executive'),
(11,'Vikas','Yadav',102,72000,'2023-03-15',3,'Frontend Developer'),
(12,'Ritu','Chopra',101,55000,'2022-05-22',2,'HR Executive'),
(13,'Sanjay','Bansal',202,88000,'2020-06-10',6,'Finance Analyst'), 
(14,'Nisha','Arora',201,62000,'2023-01-05',5,'Marketing Specialist'),
(15,'Deepak','Joshi',203,50000,'2022-07-19',5,'Support Executive'),
(16,'Meera','Iyer',301,82000,'2023-04-11',7,'Data Analyst'),
(17,'Aditya','Shah',302,98000,'2021-10-08',7,'AI Engineer'),
(18,'Kavita','Rao',302,87000,'2022-09-16',17,'ML Engineer'),
(19,'Manish','Khanna',103,63000,'2023-06-20',4,'Sales Executive'),
(20,'Pankaj','Seth',203,48000,'2023-02-01',15,'Support Associate'),
(21,'Rakesh','Sinha',401,105000,'2021-12-12',NULL,'Cloud Architect'),
(22,'Divya','Menon',401,88000,'2022-11-14',21,'Cloud Engineer'),
(23,'Tarun','Goyal',401,76000,'2023-03-17',21,'DevOps Engineer'),
(24,'Ishita','Kapoor',402,95000,'2021-08-23',NULL,'Product Manager'),
(25,'Varun','Jain',402,72000,'2022-10-19',24,'Product Analyst'),
(26,'Shweta','Gupta',201,64000,'2023-05-12',5,'Marketing Executive'),
(27,'Ankit','Tiwari',102,68000,'2023-07-03',3,'Software Developer'),
(28,'Preeti','Sharma',301,79000,'2023-06-18',7,'Data Analyst'),
(29,'Yogesh','Patil',202,91000,'2021-04-21',6,'Senior Finance Analyst'),
(30,'Simran','Kaur',401,82000,'2022-01-11',21,'Cloud Engineer');

SELECT * FROM companies;
 SELECT * FROM departments;  
 SELECT * FROM employees;




