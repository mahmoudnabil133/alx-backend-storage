-- reset valid_mail wjen changing just mail
DELIMITER $$

CREATE TRIGGER reset_vaid
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN 
        set NEW.valid_email = 0;
    END IF;
END $$

DELIMITER ;
