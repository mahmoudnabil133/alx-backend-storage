USE Company

DROP FUNCTION get_annul_salary;

DELIMITER $$
CREATE FUNCTION if not exists get_annul_salary(hourly_pay DECIMAL(10, 2))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE annual_salary DECIMAL(10, 2);
    SET annual_salary = hourly_pay *2080; -- 40 hours * 52 week
    RETURN annual_salary;
END $$

SELECT f_name, l_name, hourly_pay, hire_date, get_annul_salary(hourly_pay) AS annual_salary
FROM Employees;
