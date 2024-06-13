DROP DATABASE IF EXISTS School;
CREATE DATABASE IF NOT EXISTS School;
USE School;

create table if not exists Student(
    id int auto_increment,
    name varchar(50) NOT NULL,
    age varchar(50),
    address varchar(50),
    PRIMARY KEY (id)
    -- index(name)
);

create table if not exists Teacher(
    id int auto_increment PRIMARY KEY,
    name varchar(50),
    age int,
    address varchar(50)
    -- FOREIGN KEY (id) references Student(id)
);

INSERT INTO Student(name, age, address) VALUES('John', 20, 'New York'),
                                              ('Marry', 21, 'New York'),
                                              ('John', 20, 'New York'),
                                              ('Marry', 21, 'New York'),
                                              ('John', 20, 'New York'),
                                              ('Marry', 21, 'New York');

insert into Teacher(name, age, address) values('alia', 19, 'Ismalia'),
                                              ('nala', 22, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('kamer', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('amar', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('olfat', 29, 'Ismalia'),
                                              ('nabwia',30 , 'Ismalia');

-- build a sql injection
-- SELECT * FROM Student WHERE name = 'John' OR 1=1;
-- SELECT age FROM Student WHERE name = '';SELECT * from Student;-- ' 
-- can you explain field1 <> value1 ?
-- SELECT * 
-- FROM Student
-- WHERE name LIKE '%rr%'; -- and age <> 21

-- study indexes
