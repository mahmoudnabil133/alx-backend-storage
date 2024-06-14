-- CREATE PROCEDURE THAT ADD ANEW RECORD INTO CORRECTION TABLE

DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$

CREATE PROCEDURE AddBonus(IN User_id INT, IN Pro_name VARCHAR(255), IN Score INT)
BEGIN
    DECLARE Pro_id INT;
    
    -- if not exists (select...)
    IF Pro_name not in (select name from projects where name = Pro_name) THEN
        insert into projects(name) values(Pro_name);
    END IF;
    
    -- select id into pro_id from where
    set Pro_id = (SELECT id from projects where name = Pro_name);
    INSERT INTO corrections(user_id, project_id, score) values(User_id, Pro_id, Score);

END $$
DELIMITER ;
