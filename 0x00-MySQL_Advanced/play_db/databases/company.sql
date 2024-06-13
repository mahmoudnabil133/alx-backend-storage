DROP DATABASE IF EXISTS Company;
CREATE DATABASE Company;
USE Company;

CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR(50) NOT NULL,
    l_name VARCHAR(50) NOT NULL,
    hourly_pay DECIMAL(10, 2),
    salary DECIMAL(10, 2),
    job VARCHAR(50),
    hire_date DATE,
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES Employees(id)
);

CREATE TABLE total_salary_trigger(
    sum_salary DECIMAL(10, 2)
);

drop view if EXISTS Sum_salaries;
CREATE VIEW Sum_salaries AS
SELECT SUM(salary) as total_summary
from Employees;

INSERT INTO Employees (f_name, l_name, hourly_pay, salary, job, hire_date, supervisor_id) VALUES 
('Kamal', 'Nagy', 30, 30 * 2080, 'manager', '2024-06-13', NULL);

INSERT INTO Employees (f_name, l_name, hourly_pay, salary, job, hire_date, supervisor_id) VALUES 
('Esam', 'Mohamed', 15, 15 * 2080, 'cook', '2024-06-14', 1),
('Enjy', 'Yasser', 17, 17 * 2080, 'cook', '2024-06-15', 1),
('Hany', 'Tany', 23, 23 * 2080, 'assistant_manager', '2024-06-16', 1),
('Omar', 'Shama', 19, 19 * 2080, 'secretary', '2024-06-17', 1);
