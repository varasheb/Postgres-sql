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
\s
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/lods/psqlLogD1.sql
\s  /home/lucky/BridgeLabz-jsbasic/Postgres/lods/psqlLogD1.sql
\s  /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD1.sql
select * from student
;
select * from course
;
select * from marks
;
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/marks.sql
select * from marks
;

select * from marks
;
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/marks.sql
\d marks
select * from marks
;
drop table marks
;
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/marks.sql
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/marks.sql
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/marks.sql

\t marks
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/marks.sql
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/marks.sql
select * from marks
;
insert into marks (mark_id, student_id, course_id, marks, grade) values (1, 1, 101, 87, 'A');
insert into marks (mark_id, student_id, course_id, marks, grade) values (2, 2, 101, 87, 'A');
select * from marks;
SELECT * FROM marks
ORDER BY mark_id;
select student_id from student ;
select count(*) from student;
select count(*) from course;
select count(*) from marks;
select sum(marks) from marks;
select sum(student_id) from student
;
select sum(credit) from course;
select sum(credits) from course;
select avg(marks) from marks;
select min(marks) from marks;
select * from marks;
select * from student where course_id =( (select min(marks) from marks);
q
;
);
select * from student where course_id =( (select min(marks) from marks)
);
select * from student where course_id =(
select course_id from marks where );
select * from student where student_id =(
select student_id from marks where marks=min(marks) );
select * from student where student_id =(
select student_id from marks where marks=(select min(marks) from marks ) );
select upper(instructor) from course
;
select instructor from course
;
select lower(instructor) from course
;
select round(credits/2) from course;
select concat(student_id,': ',first_name,' ',last_name) from student;
select concat(student_id,': ',first_name,' ',last_name) as students  from student;
select substring(instructor from 1 for 3) from course;
select substring(instructor from 3) from course;
select substring(instructor from 4) from course;
\s /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD2.sql
\s /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD1.sql
