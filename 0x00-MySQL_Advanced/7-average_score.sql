-- create procedure that update the ave score of student

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN US_ID INT)
BEGIN
    DECLARE avg_score FLOAT;

    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = US_ID;

    UPDATE users
    SET average_score = avg_score
    WHERE id = US_ID;
END $$

DELIMITER ;
