-- this will remove the table students
DROP TABLE students;
-- this is a comment. below creates a table
CREATE TABLE students
(
	id SERIAL4 PRIMARY KEY,
	first VARCHAR(25), 
	last VARCHAR(25),
	dob DATE, 
	gpa FLOAT8
);
-- every statement must end with a ;
-- sql uses single quotes '' around strings
INSERT INTO students (first, last, dob, gpa) VALUES ('David', 'Fisher', '9/21/1982', 4.0);
INSERT INTO students (first, last, dob, gpa) VALUES ('Liz', 'Lemon', '5/9/1970', 3.75);
INSERT INTO students (first, last, dob, gpa) VALUES ('Hermione', 'Granger', '9/19/1980', 2.1);
INSERT INTO students (first, last, dob, gpa) VALUES ('James', 'Bond', '4/12/1942', 3.2);
INSERT INTO students (first, last, dob, gpa) VALUES ('Harry', 'Potter', '2/1/1982', 3.5);
-- new table about computers

-- DROP TABLE computers;
CREATE TABLE computers
(
	id SERIAL4 PRIMARY KEY,
	make VARCHAR(25),
	model VARCHAR(25),
	release_date DATE
);

INSERT INTO computers (make, model, release_date) VALUES ('Apple', 'iMac G3', '01/01/1998');
INSERT INTO computers (make, model, release_date) VALUES ('Apple', 'Macbook Pro', '01/01/2006');
INSERT INTO computers (make, model, release_date) VALUES ('Apple', 'iBook', '01/01/1999');