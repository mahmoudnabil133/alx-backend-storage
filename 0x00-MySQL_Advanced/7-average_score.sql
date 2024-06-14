-- create procedure that update the ave score of student

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN User_id INT)
BEGIN
    DECLARE avg_score FLOAT;

    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = User_id;

    UPDATE users
    SET average_score = avg_score
    WHERE id = User_id;
END $$

DELIMITER ;
