use School;
drop procedure if exists get_student;

DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS get_student(IN n VARCHAR(50))

BEGIN
    SELECT *
    FROM Student
    WHERE name = n;
END $$

DELIMITER ;


use Company;
DELIMITER $$

drop procedure get_anual_salary;
CREATE PROCEDURE if not exists get_anual_salary()
BEGIN
    SELECT f_name, l_name, hourly_pay, hourly_pay * 2080 As anual_salary,  hire_date
    from Employees;
END $$

DELIMITER ;
-- CALL get_student('john');

-- CALL get_anual_salary();
