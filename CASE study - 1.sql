CREATE DATABASE Employee_Management;
USE  Employee_Management;
CREATE TABLE department (id INT AUTO_INCREMENT PRIMARY KEY, dep_name VARCHAR(50) NOT NULL);
INSERT INTO department VALUES
('HR'),
('IT'),
('TESTING'),
('DVELOPER'),
('MANAGEMENT');

SELECT * FROM department;
 
CREATE TABLE empolyees (emp_id INT AUTO_INCREMENT PRIMARY KEY, emp_name VARCHAR(50) NOT NULL,age INT NOT NULL,gender VARCHAR(10) NOT NULL,salary INT NOT NULL,CHECK (salary>30000),dep_id INT ,FOREIGN KEY (dep_id) REFERENCES department (id));
INSERT INTO employees VALUES
('Akhil',25,'Male',55000,3),
('Bavya',20,'Female',68000,5),
('Anbu',35,'Male',59000,2),
('Vinoth',40,'Male',74000,4),
('Pavi',23,'Female',76000,3),
('Yuva',29,'Male',59000,1),
('Divya',25,'Female',67000,2),
('Gomathi',23,'Female',82000,1),
('Manisha',26,'Female',58000,4),
('Deepak',48,'Male',65000,2),
('Vaishu',55,'Female',74000,3),
('Anish',36,'Male',57000,1),
('Vinitha',49,'Female',69000,2),
('Deekshit',55,'Male',79000,5),
('Dharani',45,'Female',85000,2);

SELECT * FROM  empolyees ;

CREATE TABLE projects(id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50) NOT NULL,Budget INT NOT NULL,CHECK (Budget>10000));

INSERT INTO projects VALUES
('App Develop',75000),
('Web Develop',95000),
('Data Analysis',65000),
('Network',80000),
('Game Develop',99000);

SELECT * FROM  projects;

CREATE TABLE Emp_Project (emp_id INT, project_id INT, FOREIGN KEY (emp_id) REFERENCES employees(emp_id),FOREIGN KEY (project_id) REFERENCES projects(id) ,PRIMARY KEY ( emp_id, project_id ));

INSERT INTO  Emp_Project VALUES
(1,4),
(3,1),
(2,3),
(4,5),
(5,42);

SELECT * FROM Emp_Project;

CREATE TABLE Attendance (id INT AUTO_INCREMENT PRIMARY KEY,emp_id INT ,FOREIGN KEY (emp_id) REFERENCES employees(emp_id),Date DATE NOT NULL,Status ENUM ('Present', 'Absent', 'On Leave'));



