
DROP TABLE lockers, students, courses, studentCourses;-- 

CREATE TABLE students (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
age INTEGER NOT NULL
);


CREATE TABLE lockers (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
combination VARCHAR(10),
studentId INTEGER,
FOREIGN KEY (studentId) REFERENCES students(id)
);

CREATE TABLE courses(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100)
);

CREATE TABLE studentCourses(
 id INTEGER PRIMARY KEY AUTO_INCREMENT,
 studentId INTEGER, 
 courseId INTEGER,
 FOREIGN KEY(studentId) REFERENCES students(id),
 FOREIGN KEY(courseId) REFERENCES courses(id)
);

-- INSERT students 
INSERT INTO students VALUES(1, "Sayeed", "Joseph", 17);
INSERT INTO students VALUES(2, "John", "Doe", 18);
INSERT INTO students VALUES(3, "Jane", "Doe", 19);

-- INSERT lockers
INSERT INTO lockers VALUES(1, "45 62 36", 1);

-- INSERT courses 
INSERT INTO courses VALUES(1, "Math"); 
INSERT INTO courses VALUES(2,"English"); 
INSERT INTO courses VALUES(3, "Science"); 

-- INSERT studentCourses
INSERT INTO studentCourses VALUES(1, 1, 1);
INSERT INTO studentCourses VALUES(2, 1, 2);
INSERT INTO studentCourses VALUES(3, 2,3);
INSERT INTO studentCourses VALUES(4, 3, 3);


SELECT * FROM studentCourses;
SELECT firstName, lastName FROM students;
SELECT firstName, lastName FROM students LIMIT 2; 
SELECT firstName, lastName FROM students WHERE age >= 18; 
SELECT firstName, lastNAME FROM students ORDER BY firstName; 
-- Order iin alaphabet backwards order 
SELECT firstName, lastName FROM students ORDER BY firstName DESC;

-- CREATE TABLE Student
-- DROP TABLE 
-- Constraints
-- UNIQUE




