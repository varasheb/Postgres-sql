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
\d
\t
select * from students
;
select * from student;
/s
select * from course;
select * from student inner join course on student.course_id=course.course_id
;
select * from student outer join course on student.course_id=course.course_id;
select * from student outer join course 
;
select * from student right join course on student.course_id=course.course_id;
select * from student left join course on student.course_id=course.course_id;
select * from student full join course on student.course_id=course.course_id;
select * from student cross join course on student.course_id=course.course_id;
select * from student cross join course ;
select * from student inner join course on student.course_id=course.course_id inner join marks on course.course_id=marks.course_id;
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.sql
select * from student order by first_name asc
;
select * from student order by date_of_birth asc
;
select * from student order by date_of_birth des
;
select * from student order by date_of_birth desc;
select now()
;
select now();
select now()::time;
select Extract(YEAR from now())
;
\d stdent
\d student
select * from student inner join course on student.course_id=course.course_id inner join marks on course.course_id=marks.course_id;
select * from student inner join course on student.course_id=course.course_id;
select * from student inner full course on student.course_id=course.course_id;
select * from student full join course on student.course_id=course.course_id;
\t
\d
create table student()
;
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FORENIGN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FORGIN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FOREGIN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FOREIGN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FOREIGN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_Name VARCHAR(255) FOREIGN KEY);9
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255) FOREIGN KEY references course_name);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255) FOREIGN KEY references course (course_name));
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255) FOREIGN KEY references course(course_name));
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255));
\d studentInfo
Insert into studentInfo(student_id,student_name,email,course_name) values (1,virat,virat@gmail.com,MATHEMATICS)
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,'virat','virat@gmail.com','MATHEMATICS')
;
SELECT * from studentInfo
;
SELECT course_name from studentInfo
;
SELECT * from studentInfo;
\d studentInfo
select s.student_id,s.first_name,s.eamil,c.course_name from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,s.eamil,c.course_name  from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where s.course_id_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where c.course_id_id=s.course_id;
select s.student_id,s.first_name,c.course_name  from student ,course where student.course_id_id=course.course_id;
select student_id,first_name,course_name  from (select * from student inner join course on student.course_id=course.course_id );
Insert into studentInfo(student_id,student_name,email,course_name) values (1,virat,virat@gmail.com,select coursename from course where course_id=103)
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,virat,virat@gmail.com,(select coursename from course where course_id=103))
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,'virat','virat@gmail.com',(select coursename from course where course_id=103))
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,'virat','virat@gmail.com',(select course_name from course where course_id=103));
Insert into studentInfo(student_id,student_name,email,course_name) values (2,'virat','virat@gmail.com',(select course_name from course where course_id=103));
Insert into studentInfo(student_id,student_name,email,course_name) values (2,'rohit shrma','rohit@gmail.com',(select course_name from course where course_id=103));
select * from  studentInfo
;
SELECT name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT first_name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT concat(first_name," ",last_name) as name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT concat(first_name,' ',last_name) as name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT concat(first_name," ",last_name) as name

FROM student
WHERE student_id = (SELECT student_id
                    FROM marks
                    WHERE course_id = 101
                    ORDER BY marks DESC
                    LIMIT 1);
SELECT concat(first_name,' ',last_name) as name
FROM student
WHERE student_id = (SELECT student_id
                    FROM marks
                    WHERE course_id = 101
                    ORDER BY marks DESC
                    LIMIT 1);
SELECT student_id, course_id
FROM marks
WHERE (student_id, course_id) IN (SELECT student_id, course_id
                                  FROM marks
                                  WHERE marks > 80);
SELECT name
FROM student s
WHERE EXISTS (SELECT 1
              FROM marks m
              WHERE m.student_id = s.student_id
              AND m.marks > (SELECT AVG(marks)
                             FROM marks
                             WHERE course_id = m.course_id));
SELECT first_name
FROM student s
WHERE EXISTS (SELECT 1
              FROM marks m
              WHERE m.student_id = s.student_id
              AND m.marks > (SELECT AVG(marks)
                             FROM marks
                             WHERE course_id = m.course_id));
CREATE VIEW top_students AS
SELECT student_id, name
FROM student
WHERE student_id IN (SELECT student_id FROM marks WHERE grade = 'A');
CREATE VIEW top_students AS
SELECT student_id, concat(first_name,' ',last_name)
FROM student
WHERE student_id IN (SELECT student_id FROM marks WHERE grade = 'A');
select * from top_students
;
CREATE VIEW student_courses AS
SELECT s.student_id, s.name, c.course_name, m.marks, m.grade
FROM student s
JOIN marks m ON s.student_id = m.student_id
JOIN course c ON m.course_id = c.course_id;
CREATE VIEW student_courses AS
SELECT s.student_id, concat(s.first_name,' ',s.last_name) as name, c.course_name, m.marks, m.grade
FROM student s
JOIN marks m ON s.student_id = m.student_id
JOIN course c ON m.course_id = c.course_id;
SELECT * FROM student_courses;
CREATE MATERIALIZED VIEW student_avg_marks AS
SELECT student_id, AVG(marks) AS avg_marks
FROM marks
GROUP BY student_id;
REFRESH MATERIALIZED VIEW student_avg_marks;
REFRESH MATERIALIZED VIEW student_avg_marks;
SELECT * FROM student_avg_marks;
SELECT 10 + 5 AS addition;
SELECT 10 - 5 AS subtraction;
SELECT 10 * 5 AS multiplication;
SELECT 10 / 5 AS division;
SELECT 10 % 3 AS modulus;
SELECT * FROM student WHERE age = 20;
SELECT * FROM student WHERE age <> 20;
SELECT * FROM student WHERE age > 20;
SELECT * FROM student WHERE age < 20;
SELECT * FROM student WHERE age >= 20;
SELECT * FROM student WHERE age <= 20;
SELECT * FROM student WHERE date_of_birth = '2004-05-27';
SELECT * FROM student WHERE date_of_birth <> '2004-05-27';
SELECT * FROM student WHERE date_of_birth > '2004-05-27';
SELECT * FROM student WHERE date_of_birth < '2004-05-27';
SELECT * FROM student WHERE date_of_birth >= '2004-05-27';
SELECT * FROM student WHERE date_of_birth <= '2004-05-27';
SELECT * FROM student WHERE date_of_birth < '2003-01-01' AND grade = 'A';
SELECT * FROM student WHERE date_of_birth < '2003-01-01' OR grade = 'A';
SELECT * FROM student WHERE NOT (grade = 'F');
SELECT * FROM student WHERE date_of_birth < '2003-01-01' AND grade = 'A';
SELECT * FROM student WHERE date_of_birth < '2003-01-01' OR course_id = '101';
SELECT * FROM student WHERE NOT (course_id = '101');
SELECT 'Hello' || ' ' || 'World' AS greeting;
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE name ILIKE 'a%';
SELECT 'Hello' || ' ' || 'World' AS greeting;
SELECT * FROM student WHERE first_name LIKE 'A%';
SELECT * FROM student WHERE first_name ILIKE 'a%';
SELECT 5 & 3 AS bitwise_and;
SELECT 5 | 3 AS bitwise_or;
SELECT 5 # 3 AS bitwise_xor;
SELECT ~5 AS bitwise_not;
SELECT 5 << 1 AS bitwise_shift_left;
SELECT 5 >> 1 AS bitwise_shift_right;
SELECT course_id FROM student
UNION
SELECT course_id FROM course;

SELECT course_id FROM student
UNION ALL
SELECT course_id FROM course;

SELECT course_id FROM student
INTERSECT
SELECT course_id FROM course;

SELECT course_id FROM student
EXCEPT
SELECT course_id FROM course;
SELECT course_id FROM student
UNION
SELECT course_id FROM course;

SELECT course_id FROM student
UNION ALL
SELECT course_id FROM course;

SELECT course_id FROM student
INTERSECT
SELECT course_id FROM course;

SELECT course_id FROM student
EXCEPT
SELECT course_id FROM course;
SELECT * FROM student WHERE date_of_birth IS NULL;
SELECT * FROM student WHERE date_of_birth IS NOT NULL;

SELECT * FROM marks WHERE grade IN ('A', 'B', 'C');

SELECT * FROM student WHERE date_of_birth BETWEEN '2000-01-01' AND '2003-01-01';

SELECT * FROM student
WHERE student_id = ANY (SELECT student_id FROM marks WHERE marks >= 90);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 70);
SELECT * FROM student
WHERE student_id = ANY (SELECT student_id FROM marks WHERE marks >= 50);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 60);
SELECT * FROM student
WHERE student_id = ANY (SELECT student_id FROM marks WHERE marks >= 50);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 90);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 80);
\s /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD1.sql
\d
\dt
\l
SELECT * FROM pg_views;
create function get_student_grade(student_id INT)
returns varchar(2) as $$
declare
  grade varchar(2);
begin
   select grade from marks where student_id = get_student_grade.student_id;
end;
$$ language plpgsql
;
SELECT get_student_grade(1); 
drop function if exists get_student_grade(INT);
SELECT get_student_grade(1); 
create function get_student_grade(student_id INT)
returns varchar(2) as $$
begin
  return select grade from marks where student_id = get_student_grade.student_id;
end;
$$ language plpgsql
;
CREATE FUNCTION get_student_grade(student_id INT)
RETURNS VARCHAR(2) AS $$
DECLARE
    grade_value VARCHAR(2);
BEGIN
    SELECT grade INTO grade_value FROM marks WHERE student_id = get_student_grade.student_id;
    RETURN grade_value;
END;
$$ LANGUAGE plpgsql;
SELECT get_student_grade(1); 
select * from marks
;
drop function if exists get_student_grade(INT);
CREATE FUNCTION get_student_grade(student_id INT)
RETURNS VARCHAR(2) AS $$
DECLARE
    grade_value VARCHAR(2);
BEGIN
    SELECT grade INTO grade_value FROM marks WHERE marks.student_id = get_student_grade.student_id;
    RETURN grade_value;
END;
$$ LANGUAGE plpgsql;
SELECT get_student_grade(1); 
SELECT get_student_grade(2); 
SELECT get_student_grade(3); 
select * from student
;
SELECT get_student_grade(7); 
select * from students
;
select * from student;
select * from course;
select * from marks;
select now();
SELECT length('hello');
SELECT version();
SELECT TO_DATE('2024-05-30', 'YYYY-MM-DD');
SELECT ABS(-10);
s
;
SELECT student_id, first_name, SUM(marks) OVER (PARTITION BY student_id) AS total_marks
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY student_id;
SELECT student_id, first_name, SUM(marks) OVER (PARTITION BY student_id) AS total_marks
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY student_id;
SELECT student.student_id, first_name, SUM(marks) OVER (PARTITION BY student_id) AS total_marks
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY student_id;
SELECT student.student_id, first_name, SUM(marks) OVER (PARTITION BY student.student_id) AS total_marks
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY student_id;
SELECT first_name, ROW_NUMBER() OVER (ORDER BY score DESC) AS rank
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY rank;
SELECT first_name, ROW_NUMBER() OVER (ORDER BY marks DESC) AS rank
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY rank;
SELECT first_name, score, LAG(score) OVER (ORDER BY score) AS prev_score
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY score;
SELECT first_name, score, LAG(score) OVER (ORDER BY score) AS prev_score
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY marks;
SELECT first_name, marks, LAG(marks) OVER (ORDER BY marks) AS prev_score
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY marks;
SELECT get_student_grade(1); 
SELECT get_student_grade(8); 
SELECT get_student_grade(9); 
RETURNS integer AS $$
BEGIN
    RETURN a + b;
END;
$$ LANGUAGE plpgsql;
RETURNS integer AS $$
BEGIN
    RETURN a + b;
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION add_numbers(a integer, b integer)
RETURNS integer AS $$
BEGIN
    RETURN a + b;
END;
$$ LANGUAGE plpgsql;
select add_numbers(10,20);
drop function add_numbers(INT,INT);
select add_numbers(10,20);
CREATE OR REPLACE FUNCTION add_numbers(a integer,b integer)
returns integer AS $$
begin
return a+b;
end;
$$ language plpgsql;
select add_numbers(10,20);
create or replace function student_marks(student_id INT)
RETURNS TABLE report(student_id INTEGER, first_name TEXT, last_name TEXT, date_of_birth DATE, email TEXT,course_name TEXT,instructor TEXT,marks integer,grade TEXT)
as $$
begin
return select student_id , first_name , last_name , date_of_birth , email , course_name , instructor , marks , grade from student s INNER JOIN marks m on s.student_id=m.student_id Inner join course c on s.course_id=c.course_id where s.student_id=student_id;
end;
$$ language plpgsql;
CREATE OR REPLACE FUNCTION student_marks(student_id INT)
RETURNS TABLE (
    student_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    date_of_birth DATE,
    email TEXT,
    course_name TEXT,
    instructor TEXT,
    marks INTEGER,
    grade TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_id;
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION student_marks(student_id INT)
RETURNS TABLE (
    student_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    date_of_birth DATE,
    email TEXT,
    course_name TEXT,
    instructor TEXT,
    marks INTEGER,
    grade TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_marks.student_id;
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION student_marks(student_id INT)
RETURNS TABLE (
    student_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    date_of_birth DATE,
    email TEXT,
    course_name TEXT,
    instructor TEXT,
    marks INTEGER,
    grade TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_marks.student_id;
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION student_marks(studentid integer)
RETURNS TABLE (
    student_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    date_of_birth DATE,
    email TEXT,
    course_name TEXT,
    instructor TEXT,
    marks INTEGER,
    grade TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_marks.studentid;
END;
$$ LANGUAGE plpgsql;
select student_marks(1);
CREATE OR REPLACE FUNCTION student_marks(studentid integer)
RETURNS TABLE (
    student_id INTEGER,
    first_name varchar(255),
    last_name varchar(255),
    date_of_birth DATE,
    email varchar(255),
    course_name TEXT,
    instructor TEXT,
    marks INTEGER,
    grade TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_marks.studentid;
END;
$$ LANGUAGE plpgsql;
drop function student_marks(integer)
;
CREATE OR REPLACE FUNCTION student_marks(studentid integer)
RETURNS TABLE (
    student_id INTEGER,
    first_name varchar(255),
    last_name varchar(255),
    date_of_birth DATE,
    email varchar(255),
    course_name TEXT,
    instructor TEXT,
    marks INTEGER,
    grade TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_marks.studentid;
END;
$$ LANGUAGE plpgsql;
select student_marks(1);
drop function student_marks(integer)
;
CREATE OR REPLACE FUNCTION student_marks(studentid integer)
RETURNS TABLE (
    student_id INTEGER,
    first_name varchar(50),
    last_name varchar(50),
    date_of_birth DATE,
    email varchar(100),
    course_name TEXT,
    instructor TEXT,
    marks INTEGER,
    grade TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_marks.studentid;
END;
$$ LANGUAGE plpgsql;
select student_marks(1);
drop function student_marks(integer)
;
CREATE OR REPLACE FUNCTION student_marks(studentid integer)
RETURNS TABLE (
    student_id INTEGER,
    first_name varchar(50),
    last_name varchar(50),
    date_of_birth DATE,
    email varchar(100),
    course_name varchar(255),
    instructor varchar(255),
    marks INTEGER,
    grade varchar(2)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.last_name, s.date_of_birth, s.email, c.course_name, c.instructor, m.marks, m.grade
    FROM student s
    INNER JOIN marks m ON s.student_id = m.student_id
    INNER JOIN course c ON s.course_id = c.course_id
    WHERE s.student_id = student_marks.studentid;
END;
$$ LANGUAGE plpgsql;
select student_marks(1);
select student_marks(2);
select student_marks(5);
select student_marks(9);
CREATE OR REPLACE FUNCTION student_marks_summary(student_id INTEGER)
RETURNS TABLE (
    total_marks INTEGER,
    average_marks NUMERIC
)
AS $$
DECLARE
    total INTEGER;
    count INTEGER;
BEGIN
    SELECT SUM(marks), COUNT(*)
    INTO total, count
    FROM marks
    WHERE student_id = student_id;

    IF count = 0 THEN
        total_marks := 0;
        average_marks := 0;
    ELSE
        total_marks := total;
        average_marks := total::NUMERIC / count;
    END IF;

    RETURN NEXT;
END;
$$ LANGUAGE plpgsql;
select student_marks_summary(3);
drop function student_marks_summary(integer);
CREATE OR REPLACE FUNCTION student_marks_summary(student_id INTEGER)
RETURNS TABLE (
    total_marks INTEGER,
    average_marks NUMERIC
)
AS $$
DECLARE
    total INTEGER;
    count INTEGER;
BEGIN
    SELECT SUM(marks), COUNT(*)
    INTO total, count
    FROM marks
    WHERE student_id = student_marks_summary.student_id;

    IF count = 0 THEN
        total_marks := 0;
        average_marks := 0;
    ELSE
        total_marks := total;
        average_marks := total::NUMERIC / count;
    END IF;

    RETURN NEXT;
END;
$$ LANGUAGE plpgsql;
drop function student_marks_summary(integer);
CREATE OR REPLACE FUNCTION student_marks_summary(student_id INTEGER)
RETURNS TABLE (
    total_marks INTEGER,
    average_marks NUMERIC
)
AS $$
DECLARE
    total INTEGER;
    count INTEGER;
BEGIN
    SELECT SUM(marks), COUNT(*)
    INTO total, count
    FROM marks
    WHERE student_id = student_marks_summary.student_id;

    IF count = 0 THEN
        total_marks := 0;
        average_marks := 0;
    ELSE
        total_marks := total;
        average_marks := total::NUMERIC / count;
    END IF;

    RETURN NEXT;
END;
$$ LANGUAGE plpgsql;
select student_marks_summary(1);
drop function student_marks_summary(integer);
CREATE OR REPLACE FUNCTION student_marks_summary(student_id INTEGER)
RETURNS TABLE (
    total_marks INTEGER,
    average_marks NUMERIC
)
AS $$
DECLARE
    total INTEGER;
    count INTEGER;
BEGIN
    SELECT SUM(marks), COUNT(*)
    INTO total, count
    FROM marks
    WHERE marks.student_id = student_marks_summary.student_id;

    IF count = 0 THEN
        total_marks := 0;
        average_marks := 0;
    ELSE
        total_marks := total;
        average_marks := total::NUMERIC / count;
    END IF;

    RETURN NEXT;
END;
$$ LANGUAGE plpgsql;
select student_marks_summary(2);
select student_marks_summary(2);
\s /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD1.sql
DELIMITER //
CREATE PROCEDURE calculate_avg_marks(IN student_id_param INT)
BEGIN
    DECLARE total_marks DECIMAL;
    DECLARE total_subjects INT;
    DECLARE avg_marks DECIMAL;

    SELECT SUM(marks), COUNT(marks) INTO total_marks, total_subjects
    FROM marks
    WHERE student_id = student_id_param;

    IF total_subjects > 0 THEN
        SET avg_marks := total_marks / total_subjects;
        SELECT avg_marks;
    ELSE
        SELECT 0;
    END IF;
END //
DELIMITER ;
DELIMITER //

CREATE PROCEDURE calculate_avg_marks(IN student_id_param INT)
BEGIN
    DECLARE total_marks DECIMAL(10,2);
    DECLARE total_subjects INT;
    DECLARE avg_marks DECIMAL(10,2);

    SELECT SUM(marks), COUNT(marks) INTO total_marks, total_subjects
    FROM marks
    WHERE student_id = student_id_param;

    IF total_subjects > 0 THEN
        SET avg_marks = total_marks / total_subjects;
        SELECT avg_marks;
    ELSE
        SELECT 0;
    END IF;
END //

DELIMITER ;

CREATE PROCEDURE calculate_avg_marks(IN student_id_param INT)
BEGIN
    DECLARE total_marks DECIMAL(10,2);
    DECLARE total_subjects INT;
    DECLARE avg_marks DECIMAL(10,2);

    SELECT SUM(marks), COUNT(marks) INTO total_marks, total_subjects
    FROM marks
    WHERE student_id = student_id_param;

    IF total_subjects > 0 THEN
        SET avg_marks = total_marks / total_subjects;
        SELECT avg_marks;
    ELSE
        SELECT 0;
    END IF;
END 

DELIMITER ;

CREATE PROCEDURE calculate_avg_marks(IN student_id_param INT)
BEGIN
    DECLARE total_marks DECIMAL(10,2);
    DECLARE total_subjects INT;
    DECLARE avg_marks DECIMAL(10,2);

    SELECT SUM(marks), COUNT(marks) INTO total_marks, total_subjects
    FROM marks
    WHERE student_id = student_id_param;

    IF total_subjects > 0 THEN
        SET avg_marks = total_marks / total_subjects;
        SELECT avg_marks;
    ELSE
        SELECT 0;
    END IF;
END ;
CREATE PROCEDURE insert_student(
    IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN date_of_birth DATE,
    IN email VARCHAR(100),
    IN course_id INT
)
BEGIN
    INSERT INTO student (first_name, last_name, date_of_birth, email, course_id)
    VALUES (first_name, last_name, date_of_birth, email, course_id);
END;
clear
;
CREATE PROCEDURE insert_student(
    IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN date_of_birth DATE,
    IN email VARCHAR(100),
    IN course_id INT
)
BEGIN
    INSERT INTO student (first_name, last_name, date_of_birth, email, course_id)
    VALUES (first_name, last_name, date_of_birth, email, course_id);
END;
CREATE PROCEDURE insert_student(
   IN student_id INT IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN date_of_birth DATE,
    IN email VARCHAR(100),
    IN course_id INT
)
BEGIN
    INSERT INTO student (student_id ,first_name, last_name, date_of_birth, email, course_id)
    VALUES (student_id,first_name, last_name, date_of_birth, email, course_id);
END;
CREATE PROCEDURE insert_student(
   IN student_id INT, IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN date_of_birth DATE,
    IN email VARCHAR(100),
    IN course_id INT
)
BEGIN
    INSERT INTO student (student_id ,first_name, last_name, date_of_birth, email, course_id)
    VALUES (student_id,first_name, last_name, date_of_birth, email, course_id);
END;
CREATE PROCEDURE insert_student(
   IN student_id INT, IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN date_of_birth DATE,
    IN email VARCHAR(100),
    IN course_id INT
)
BEGIN
    INSERT INTO student (student_id ,first_name, last_name, date_of_birth, email, course_id)
    VALUES (student_id,first_name, last_name, date_of_birth, email, course_id)
END;
CREATE OR REPLACE PROCEDURE insert_student(
    first_name_param VARCHAR(50),
    last_name_param VARCHAR(50),
    date_of_birth_param DATE,
    email_param VARCHAR(100),
    course_id_param INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO student (first_name, last_name, date_of_birth, email, course_id)
    VALUES (first_name_param, last_name_param, date_of_birth_param, email_param, course_id_param);
END;
$$;
CALL insert_student('Gouthum', 'Gambir', '2000-05-10', 'john.doe@example.com', 101);
CALL insert_student('Gouthum', 'Gambir', '2000-05-10', 'goutum@example.com', 101);
CREATE OR REPLACE PROCEDURE insert_student(studentid INT,
    first_name_param VARCHAR(50),
    last_name_param VARCHAR(50),
    date_of_birth_param DATE,
    email_param VARCHAR(100),
    course_id_param INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO student (student_id,first_name, last_name, date_of_birth, email, course_id)
    VALUES (studentid,first_name_param, last_name_param, date_of_birth_param, email_param, course_id_param);
END;
$$;
CALL insert_student(11,'Gouthum', 'Gambir', '2000-05-10', 'goutum@example.com', 101);
select * from student;
create or replace function fnswap(inout fname varchar,inout lname varchar )
as
$$
begin
   select fname,lname into lname,fname;
end;
$$
language plpgsql;
select * from fnswap('hello','world');
select  * from student
;
select  * from student;
DO $$
Declare
BEGIN
     DECLARE;$$
;
DO $$
Declare
BEGIN
     DECLARE
DO $$
Declare
BEGIN
     DECLARE;$$
;
DO $$
Declare
BEGIN
     DECLARE
DO $$
Declare datarow RECORD; count int:=0;
BEGIN
     DECLARE
myfirstcursor Cursor for
select * from student;
BEGIN
   OPEN myfirstcursor;
   LOOP
      FETCH myfirstcursor into datarow;
      count=count+1;
      EXIT WHEN NOT found;
   END LOOP;
   CLOSE myfirstcursor;
   END;
END; $$
;
DO $$
Declare
BEGIN
     DECLARE
DO $$
Declare datarow RECORD; count int:=0;
BEGIN
     DECLARE
myfirstcursor Cursor for
select * from student;
BEGIN
   OPEN myfirstcursor;
   LOOP
      FETCH myfirstcursor into datarow;
      count=count+1;
      EXIT WHEN NOT found;
   END LOOP; myfirstcursor;
   END;
END; $$
;
DO $$
Declare
BEGIN
     DECLARE
DO $$
Declare datarow RECORD; count int:=0;
BEGIN
     DECLARE
myfirstcursor Cursor for
select * from student;
BEGIN
   OPEN myfirstcursor;
   LOOP
      FETCH myfirstcursor into datarow;
      count=count+1;
      EXIT WHEN NOT found;
   END LOOP;CLOSE myfirstcursor;END; END; $$
END; $$
;
;
DO $$
Declare datarow RECORD; count int:=0;
BEGIN
     DECLARE
myfirstcursor Cursor for
select * from student;
BEGIN
   OPEN myfirstcursor;
   LOOP
      FETCH myfirstcursor into datarow;
      count=count+1;
      EXIT WHEN NOT found;
   END LOOP;CLOSE myfirstcursor;END; END; $$
$$
;
CLEAR
;
DO $$             
Declare datarow RECORD; count int:=0;
BEGIN                                
     DECLARE                         
myfirstcursor Cursor for             
select * from student;
BEGIN                 
   OPEN myfirstcursor;
   LOOP               
      FETCH myfirstcursor into datarow;
      count=count+1;
      EXIT WHEN NOT found;
   END LOOP;CLOSE myfirstcursor;END; END; $$

;
DO $$             
Declare datarow RECORD; count int:=0;
BEGIN                                
     DECLARE                         
myfirstcursor Cursor for             
select * from student;
BEGIN                 
   OPEN myfirstcursor;
   LOOP               
      FETCH myfirstcursor into datarow;
      count=count+1;
      EXIT WHEN NOT found;RAISE NOTICE 'This is cursor loop Number:- %',count;
      RAISE NOTICE 'student value is:-%',datarow.first_name   END LOOP;CLOSE myfirstcursor;END; END; $$

;
DO $$             
Declare datarow RECORD; count int:=0;
BEGIN                                
     DECLARE                         
myfirstcursor Cursor for             
select * from student;
BEGIN                 
   OPEN myfirstcursor;
   LOOP               
      FETCH myfirstcursor into datarow;
      count=count+1;
      EXIT WHEN NOT found;RAISE NOTICE 'This is cursor loop Number:- %',count;
      RAISE NOTICE 'student value is:-%',datarow.first_name;   END LOOP;CLOSE myfirstcursor;END; END; $$

;

DO $$ 
DECLARE
    student_cursor CURSOR FOR 
    SELECT student_id, first_name, last_name FROM student;

    student_record RECORD;  

BEGIN
 
    OPEN student_cursor;

    LOOP
        FETCH student_cursor INTO student_record;

        EXIT WHEN NOT FOUND; 

        RAISE NOTICE 'ID: %, Name: % %', student_record.student_id, student_record.first_name, student_record.last_name;
    END LOOP;

    CLOSE student_cursor;
END $$;

DO $$ 
DECLARE
    student_cursor CURSOR FOR 
    SELECT student_id, first_name, last_name FROM student;

    student_record RECORD;  

BEGIN
 
    OPEN student_cursor;

    LOOP
        FETCH student_cursor INTO student_record;

        EXIT WHEN NOT FOUND; 

        RAISE NOTICE 'ID: %, Name: % %', student_record.student_id, student_record.first_name, student_record.last_name;
    END LOOP;

    CLOSE student_cursor;
END $$;
DO $$
DECLARE
    marks_cursor CURSOR FOR 
    SELECT student_id, marks FROM marks;

    mark_record RECORD; 
    total_marks INT := 0;

BEGIN
    OPEN marks_cursor;

    LOOP
        FETCH marks_cursor INTO mark_record;

        EXIT WHEN NOT FOUND; 

        total_marks := total_marks + mark_record.marks;
        RAISE NOTICE 'Student ID: %, Marks: %, Total Marks: %', mark_record.student_id, mark_record.marks, total_marks;
    END LOOP;

    CLOSE marks_cursor;
    RAISE NOTICE 'Final Total Marks: %', total_marks;
END $$;
\s /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD1.sql
old
;
select old;
select old.first_name from student;
CREATE TABLE student_backup (
    backup_id SERIAL PRIMARY KEY
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE, 
    email VARCHAR(100), 
    course_id INT,
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE student_backup (
    backup_id SERIAL PRIMARY KEY,
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE, 
    email VARCHAR(100), 
    course_id INT,
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE OR REPLACE FUNCTION backup_deleted_student()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO student_backup (student_id, first_name, last_name, date_of_birth, email, course_id) 
    VALUES (OLD.student_id, OLD.first_name, OLD.last_name, OLD.date_of_birth, OLD.email, OLD.course_id);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER backup_deleted_student_trigger
AFTER DELETE ON student
FOR EACH ROW
EXECUTE FUNCTION backup_deleted_student();
select * from students
;
select * from student
;
DELETE FROM student WHERE student_id = 1;
DELETE FROM student WHERE student_id = 11;
select * from student_backup;
rollback
;
\s /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD1.sql
