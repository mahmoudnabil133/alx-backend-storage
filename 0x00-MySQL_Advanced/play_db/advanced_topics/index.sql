CREATE INDEX  name_index
ON Student(name);

CREATE INDEX name_age_index
on Student(name, age);

ALTER table Student
drop index name_index;

SHOW indexes  from Student;
