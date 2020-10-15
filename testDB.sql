
DROP TABLE students, courses, studentCourses;-- 

CREATE TABLE students (
id INTEGER PRIMARY KEY,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
age INTEGER NOT NULL
);


CREATE TABLE courses(
id INTEGER PRIMARY KEY,
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
INSERT INTO students VALUES
(1, "Sayeed", "Joseph", 17),
(2, "John", "Doe", 18),
(3, "Jane", "Doe", 19);

-- INSERT courses 
INSERT INTO courses VALUES
(1, "Math"),
(2,"English"),
(3, "Science"); 

-- INSERT studentCourses
INSERT INTO studentCourses VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2,3),
(4, 3, 3);


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




