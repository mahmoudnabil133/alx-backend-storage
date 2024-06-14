-- Create a stored procedure that calc weighted average of students score

DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN USR_ID INT)
BEGIN
    UPDATE users
    SET average_score = (
        SELECT SUM(corrections.score * projects.weight) / SUM(projects.weight)
        FROM corrections
        INNER JOIN projects
        ON corrections.project_id = projects.id
        WHERE corrections.user_id = USR_ID
    )
    WHERE id = USR_ID;
END $$
DELIMITER ;
