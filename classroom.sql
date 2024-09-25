CREATE DATABASE college;
USE college;

CREATE TABLE student (
id INT PRIMARY KEY ,
name VARCHAR(50) ,
age INT NOT NULL
);

INSERT INTO student VALUES(1, "Aman", 26);
INSERT INTO student VALUES(2, "Deepak", 24);
INSERT INTO student VALUES(3, "Mukul", 23);

SELECT * FROM student;

SHOW TABLES;
