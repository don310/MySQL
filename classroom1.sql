CREATE DATABASE college;
USE college;

CREATE TABLE student1 (
rollno INT PRIMARY KEY ,
name VARCHAR(50)
);

SELECT * FROM student1;

INSERT INTO student1
(rollno, name)
VALUES
(101, "Deepak"),
(102, "Mukul"),
(103, "Bhawana");

CREATE TABLE emp (
  id INT,
  salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;

ALTER TABLE student2
ADD COLUMN age INT;
SELECT * FROM student2;

TRUNCATE TABLE student2;
SELECT * FROM student2;



