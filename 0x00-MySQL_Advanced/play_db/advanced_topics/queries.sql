-- queries on comapany database -------------------------------------------
USE Company;

-- UPDATE total_salary_trigger
-- set sum_salary = (select sum(salary) from Employees)

-- see changes on insert

SELECT * FROM total_salary_trigger;
insert into Employees(f_name, l_name, hourly_pay, salary, hire_date, supervisor_id) values('ali', 'osman', 20, Null, '2024-6-17', 1);
update Employees set hourly_pay = 23 where id = 2;
DELETE FROM Employees WHERE id =6;
