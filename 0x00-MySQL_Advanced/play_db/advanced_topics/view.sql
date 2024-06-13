use School;

drop view if exists st_names;

CREATE VIEW  st_names AS
SELECT name 
FROM Student;

-- select * from st_names;
