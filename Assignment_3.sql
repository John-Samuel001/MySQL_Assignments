CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age > 18),  
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Gender VARCHAR(10) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL  
);

INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'Rohan', 'Sharma', '1985-05-12', 39, 'Male', 'HR', 45000),
(2, 'Aaliya', 'Khan', '1990-08-25', 34, 'Female', 'Finance', 38000),
(3, 'Vikram', 'Singh', '1987-11-30', 37, 'Male', 'IT', 27000),
(4, 'Neha', 'Verma', '1995-03-17', 29, 'Female', 'IT', 30000),
(5, 'Arjun', 'Nair', '1980-07-05', 44, 'Male', 'Marketing', 42000),
(6, 'Meera', 'Pillai', '1982-12-22', 42, 'Female', 'Sales', 35000),
(7, 'Rahul', 'Das', '1989-09-10', 35, 'Male', 'IT', 22000),
(8, 'Sonia', 'Mishra', '1993-04-28', 31, 'Female', 'HR', 25000),
(9, 'Karan', 'Kapoor', '1996-06-15', 28, 'Male', 'Operations', 20000),
(10, 'Simran', 'Joshi', '1998-10-05', 26, 'Female', 'IT', 27000);

SELECT First_Name, Last_Name, DOB FROM Managers WHERE Manager_Id = 1;

SELECT First_Name, Last_Name, (Salary * 12) AS Annual_Income FROM Managers;

SELECT * FROM Managers WHERE First_Name <> 'Aaliya';

SELECT * FROM Managers WHERE Department = 'IT' AND Salary > 25000;

-- Display details of managers whose salary is between 10000 and 35000
SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;