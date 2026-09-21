CREATE DATABASE employee;
USE employee;

CREATE TABLE departments(
		department_id INT PRIMARY KEY,
		department_name VARCHAR (100)
        );
SELECT * from departments;

CREATE TABLE location(
          location_id INT PRIMARY KEY,
          location VARCHAR (30)
          );
          
SELECT * from location;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);

SELECT * from employees;

ALTER TABLE employees
ADD email VARCHAR(100);

ALTER TABLE employees
MODIFY designation VARCHAR(150);

ALTER TABLE employees
DROP COLUMN age;

ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;

ALTER TABLE departments
RENAME TO Departments_Info;

ALTER TABLE location
RENAME TO Locations;

TRUNCATE TABLE employees;
SELECT* FROM employees;

DROP TABLE employees;
DROP DATABASE employee;

---CONSTRAINTS

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);


SELECT  * FROM Employees;
