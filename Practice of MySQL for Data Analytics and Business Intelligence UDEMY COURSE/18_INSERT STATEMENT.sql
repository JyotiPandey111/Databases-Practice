-- practice:

SELECT 
    *
FROM
    employees.employees
LIMIT 10;


INSERT INTO employees.employees 
(emp_no, 
birth_date, 
first_name, 
last_name, 
gender, 
hire_date) 
VALUES 
(999901, 
'1986-04-21',
'John', 
'Smith', 
'M', 
'2011-01-01');



-- check the inserted values
SELECT 
    *
FROM
    employees.employees
ORDER BY emp_no DESC
LIMIT 10;


-- we can change the order we want to enter our values, we must put the values in the exact order we have listed the column names.alter


INSERT INTO employees 
VALUES
(999903,
'1977-09-14',
'Johnathan',
'Creek',
'M',
'1999-01-01'
);
SELECT 
    *
FROM
    employees.employees
ORDER BY emp_no DESC
LIMIT 10;



/*
task: select ten records from the title table to get a better idea of the table. in the same table insert information about employyes number 999903 
state the he is a senior engineer who has started working in this position on 1 oct 1997. 
at the end sort the record for the title table in desc order to cheack if you have succesffulyy inserted then new record.
*/
SELECT 
    *
FROM
    employees.titles
LIMIT 10;

 INSERT INTO titles
 (
 emp_no,
 title,
 from_date
 )
 VALUES
 (999903,
 'Senior Engineer',
 '1997-10-01'
 );
 
 SELECT 
    *
FROM
    employees.titles
ORDER BY emp_no DESC;
 
 /*
 task 2: insert information aout individual with employee number 999903 into the dept_emp table. 
 he is working for department number 5 and has started work on oct 1 1997 his contract is for an indefinite period of time.
 */
 
 SELECT 
    *
FROM
    employees.dept_emp
LIMIT 10;

INSERT INTO dept_emp 
VALUES
(
999903,
'd005',
'1997-10-01',
'9999-01-01'
);

SELECT 
    *
FROM
    employees.dept_emp
ORDER BY emp_no DESC
LIMIT 10;



-- insert data into new table

-- INSERT INTO SELECT
-- practice: create a new table departments_dup and copy the data from departments table into tha new table.
SELECT 
    *
FROM
    employees.departments
LIMIT 10;


CREATE TABLE departments_dup
(
dept_no CHAR(4) NOT NULL, 
dept_name VARCHAR(40) NOT NULL
);

SELECT 
    *
FROM
    employees.departments_dup;
    
    
    
    
INSERT INTO departments_dup 
(
	dept_no,
    dept_name
)
SELECT 
	*
FROM
	departments;




SELECT 
    *
FROM
    employees.departments_dup;
    



-- task: create a new department called business analysis . register it under number d010

SELECT 
    *
FROM
    employees.departments
LIMIT 10;

INSERT INTO departments
VALUES
(
	'd010',
	'Business Analysis'
);


SELECT 
    *
FROM
    employees.departments
ORDER BY dept_no DESC
LIMIT 10;