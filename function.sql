------------------------------------------------------------------------------------------------------------------------------------------
Functions

Aggregate Functions: These functions operate on a set of values and return a single value. Examples include COUNT, SUM, AVG, MIN, and MAX.

Scalar Functions: These functions operate on a single value and return a single value. Examples include UPPER, LOWER, ROUND, CONCAT, and SUBSTRING.



>>>>>>>>>>>>Aggregate Functions<<<<<<<<<<<<<

** COUNT(): Counts the number of rows in a table or the number of non-NULL values in a column.
SELECT COUNT(*) FROM student; -- Returns the total number of students
SELECT COUNT(course_id) FROM course; -- Returns the number of courses

** SUM(): Calculates the sum of values in a column.
SELECT SUM(marks) FROM marks; -- Returns the total marks of all students


** AVG(): Calculates the average of values in a column.
SELECT AVG(marks) FROM marks; -- Returns the average marks of all students

** MIN(): Finds the minimum value in a column.
SELECT MIN(marks) FROM marks; -- Returns the minimum marks

** MAX(): Finds the maximum value in a column.
SELECT MAX(marks) FROM marks; -- Returns the maximum marks

>>>>>>>>>>>Scalar Functions<<<<<<<<<<<<<<

** UPPER(): Converts a string to uppercase.
SELECT UPPER(student_name) FROM student; -- Returns the student names in uppercase

** LOWER(): Converts a string to lowercase.
SELECT LOWER(instructor) FROM course; -- Returns the instructor names in lowercase

** ROUND(): Rounds a number to a specified number of decimal places.
SELECT ROUND(credits / 2) FROM course; -- Rounds the credits to the nearest whole number

** CONCAT(): Concatenates two or more strings.
SELECT CONCAT(student_name, ' - ', address) FROM student; -- Concatenates student name and address

** SUBSTRING(): Returns a substring from a string.
SELECT SUBSTRING(student_name FROM 1 FOR 3) FROM student; -- Returns the first 3 characters of student names
