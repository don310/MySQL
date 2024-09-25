CREATE DATABASE college;
USE college;

CREATE TABLE student2 (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);

INSERT INTO student2
(rollno, name, marks, grade, city)
VALUES
(101, "Deepak", 99, "A", "Nainital"),
(102, "Jagdish", 45, "C", "Delhi"),
(103, "Mukul", 8, "D", "Pune"),
(104, "Bhawana", 48, "C", "Nainital"),
(105, "Deepak", 9, "D", "Kolkata");

SELECT * FROM student2;
SELECT name marks FROM student2;
SELECT DISTINCT city FROM student2;
SELECT * FROM student2 WHERE marks > 80;
SELECT * FROM student2 WHERE city = "Nainital" AND marks > 80;
SELECT * FROM student2 WHERE city = 'Nainital' OR marks > 80;
SELECT * FROM student2 WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student2 WHERE city IN ("Delhi", "Mumbai");
SELECT * FROM student2 WHERE city NOT IN ("Delhi", "Mumbai");
SELECT * FROM student2 ORDER BY marks DESC;

SELECT MAX(marks) FROM student2;
SELECT AVG(marks) FROM student2;
SELECT COUNT(name) FROM student2;
SELECT name, city, count(rollno) FROM student2 GROUP BY name, city;
SELECT name, city, count(rollno) FROM student2 GROUP BY name, city HAVING MAX(marks) > 90;

SELECT city
FROM student2
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;
UPDATE student2
SET grade = "O"
WHERE grade = "A"; 

UPDATE student2
SET marks = marks + 1;
SELECT * FROM student2;

DELETE FROM student2
WHERE marks > 33;
SELECT * FROM student2;

CREATE TABLE dept (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE teacher (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES dept(id)
  ON UPDATE CASCADE
  ON DELETE CASCADE
);
