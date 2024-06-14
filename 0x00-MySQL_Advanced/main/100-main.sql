-- Show and compute average weighted score
SELECT * FROM users;
SELECT * FROM projects;
SELECT * FROM corrections;

CALL ComputeAverageWeightedScoreForUsers((SELECT id FROM users WHERE name = "Jeanne"));

SELECT "--";
SELECT * FROM users;
