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


>>>>>>>>>>>>>>>>>System Functions:<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
System functions in PostgreSQL are functions provided by the database system to perform various system-related tasks. They are used to get information about the database, server, or perform operations related to system settings.

** NOW(): Returns the current date and time.
SELECT NOW();

** CURRENT_USER: Returns the name of the current user.
SELECT CURRENT_USER;

** VERSION(): Returns the version of the PostgreSQL server.
SELECT VERSION();

>>>>>>>>>>>>>>>>>>>Built-in Functions:<<<<<<<<<<<<<<<<<<<<<<<<<<<<
Built-in functions in PostgreSQL are functions that are included with the database and provide various functionalities for data manipulation, calculations, and conversions.

** LENGTH(): Returns the length of a string.
SELECT LENGTH('hello');

** ABS(): Returns the absolute value of a number.
SELECT ABS(-10);

** TO_DATE(): Converts a string to a date.
SELECT TO_DATE('2024-05-30', 'YYYY-MM-DD');

>>>>>>>>>>>>>>>>>>>Window Functions:<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
Window functions in PostgreSQL are used to perform calculations across a set of rows related to the current row. They are often used in analytical queries to calculate moving averages, rank results, and perform other operations that require looking at neighboring rows.

** ROW_NUMBER(): Assigns a unique sequential integer to each row within a partition of a result set.
SELECT first_name, ROW_NUMBER() OVER (ORDER BY marks DESC) AS rank
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY rank;


** LAG(): Accesses data from a previous row in the same result set without the use of a self-join.
SELECT first_name, marks, LAG(marks) OVER (ORDER BY marks) AS prev_score
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY marks;


** SUM() OVER(): Calculates a running sum over a set of rows.
 SELECT student.student_id, first_name, SUM(marks) OVER (PARTITION BY student.student_id) AS total_marks
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
ORDER BY student_id;

>>>>>>>>>>User-defined functions (UDFs) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

UDF in PostgreSQL are functions that are created by users to perform custom operations. 
They can be written in various languages supported by PostgreSQL, such as SQL, PL/pgSQL, PL/Python, PL/Perl, PL/Tcl, etc. 
UDFs can simplify complex operations, improve code reusability, and encapsulate logic within the database.

Creating a User-Defined Function (UDF):

CREATE OR REPLACE FUNCTION add_numbers(a integer, b integer)
RETURNS integer AS $$
BEGIN
    RETURN a + b;
END;
$$ LANGUAGE plpgsql;

Calling a User-Defined Function:
SELECT add_numbers(10, 20); -- Returns 30