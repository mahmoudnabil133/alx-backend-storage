-- CREATE VIEW THAT LIST STUDENT WHO NEED MEATINGS

CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE (score < 80) and (last_meeting is NULL OR CURDATE() - last_meeting > 100)
