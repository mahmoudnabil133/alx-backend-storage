use Company;

drop trigger if EXISTS salary_before_update;
CREATE TRIGGER if not EXISTS salary_before_update
BEFORE UPDATE ON Employees
FOR EACH ROW
SET NEW.salary = NEW.hourly_pay * 2080;

drop trigger if EXISTS salary_before_insert;
CREATE TRIGGER if not EXISTS salary_before_insert
BEFORE INSERT ON Employees
FOR EACH ROW
SET NEW.salary = NEW.hourly_pay * 2080;

drop trigger if EXISTS Tot_salry_delete;
CREATE TRIGGER IF NOT EXISTS Tot_salry_delete
AFTER DELETE ON Employees
FOR EACH ROW
UPDATE total_salary_trigger
set sum_salary = sum_salary - OLD.salary;

drop trigger if EXISTS tot_salary_insert;
CREATE TRIGGER IF NOT EXISTS tot_salary_insert
AFTER INSERT ON Employees
FOR EACH ROW
UPDATE total_salary_trigger
set sum_salary = sum_salary + NEW.salary;

drop trigger if EXISTS tot_salary_update;
CREATE TRIGGER IF NOT EXISTS tot_salary_update
AFTER UPDATE ON Employees
FOR EACH ROW
UPDATE total_salary_trigger
set sum_salary = sum_salary + (NEW.salary - OLD.salary);
