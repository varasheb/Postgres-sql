select * from user
;
select * from users;
INSERT INTO student (first_name, last_name, date_of_birth, email)
VALUES
('Virat', 'Koli', '2000-01-15', 'virat@gmail.com'),
('Rohit', 'Shrma', '1999-05-22', 'rohit@google.com');
/dt
\dt
select * from student;
select * from student;
\s
\q
\dt
\d student
select * from student
;
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    credits INT
);
\d student
\dt
\d course
INSERT INTO course(course_id,course_name,instructor,credits) VALUES (101,'Mathematics','Dr. Smith',5);
select * from courses
;
select * from course
select * from courses
;
select * from course;
\d student
ALTER TABLE student
ADD COLUMN course_id INT,
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES course(cource_id);
ALTER TABLE student
ADD COLUMN course_id INT,
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES course(course_id);
\d student
select * from student
;
UPDATE student
SET course_id = 101
WHERE student_id = 1;
select * from student;
INSERT INTO course(course_id,course_name,instructor,credits) VALUES (102,'Rocket Science','Dr. A.P.J.Abdual Kalam',5);
select * from course;
UPDATE student
SET course_id = 102
WHERE student_id = 2;

INSERT INTO student (first_name, last_name, date_of_birth, email)
VALUES
('Mahandree Sing', 'Dhoni', '1989-03-15', 'dhoni@gmail.com')
;
select * from student;
SELECT * FROM student 
;
SELECT * 
FROM student INNER JOIN course
WHERE student.course_id = course.course_id;
SELECT * 
FROM student INNER JOIN course;
SELECT * 
FROM student INNER JOIN course ON  student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
LEFT JOIN course ON student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
RIGHT JOIN course ON student.course_id = course.course_id;
INSERT INTO course(course_id,course_name,instructor,credits) VALUES (103,'PHYSICS','Dr. Newton',5);
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
RIGHT JOIN course ON student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
FULL JOIN course ON student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
CROSS JOIN course;
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
INSERT INTO marks (mark_id, student_id, course_id, marks, grade)
VALUES (1, 1, 101, 85, 'A');

INSERT INTO marks (mark_id, student_id, course_id, marks, grade)
VALUES (2, 2, 102, 78, 'B');
\d marks
select * from marks
;
SELECT *
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
INNER JOIN course ON marks.course_id = course.course_id;
\d
\s
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.txt
\o /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.txt
\s
\o
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.txt

\s
\t
\dt
\l
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/student.txt
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/student.sql
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/Student.sql
select * student
;
select * from student;
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.sql
\s /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.sql
