create table marks (
	mark_id INT PRIMARY KEY,
	student_id INT UNIQUE,
	course_id INT ,
	marks INT CHECK (marks >= 0 AND marks <= 100),
	grade VARCHAR(1),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY  (course_id) REFERENCES course(course_id)
);
insert into marks (mark_id, student_id, course_id, marks, grade) values (1, 1, 100, 87, 'A');
insert into marks (mark_id, student_id, course_id, marks, grade) values (2, 2, 100, 46, 'C');
insert into marks (mark_id, student_id, course_id, marks, grade) values (3, 3, 102, 72, 'B');
insert into marks (mark_id, student_id, course_id, marks, grade) values (4, 4, 100, 48, 'C');
insert into marks (mark_id, student_id, course_id, marks, grade) values (5, 5, 103, 11, 'F');
insert into marks (mark_id, student_id, course_id, marks, grade) values (6, 6, 101, 78, 'B');
insert into marks (mark_id, student_id, course_id, marks, grade) values (7, 7, 101, 55, 'C');
insert into marks (mark_id, student_id, course_id, marks, grade) values (8, 8, 103, 35, 'D');
insert into marks (mark_id, student_id, course_id, marks, grade) values (9, 9, 101, 33, 'D');
insert into marks (mark_id, student_id, course_id, marks, grade) values (10, 10, 101, 57, 'C');