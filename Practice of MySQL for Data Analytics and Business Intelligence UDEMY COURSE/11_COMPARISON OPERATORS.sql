/*
so far:
 
between.. and..
like       not like
is not null      is null


= < > <= >= <> !=
*/


SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Mark';


SELECT 
    *
FROM
    employees.employees
WHERE
    first_name != 'Mark';
    
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name <> 'Mark';
    

SELECT 
    *
FROM
    employees.employees
WHERE
    hire_date > '2000-01-01';-- after 1 January 2000 not including
    
    
    
SELECT 
    *
FROM
    employees.employees
WHERE
    hire_date >= '2000-01-01';-- after 1 January 2000 including
    
    
SELECT 
    *
FROM
    employees.employees
WHERE
    hire_date < '1985-02-01'; -- before 1 February 1985


-- Task: Retrive a list with data about all feamale emplyess who where hired in the year 2000 and after

SELECT 
    *
FROM
    employees.employees
WHERE
    hire_date >= '2000-01-01' AND gender = 'F';
    
    
-- Task: Extract alist with all employees salaries hiher than 150000 per annum

SELECT 
    *
FROM
    employees.salaries
WHERE
    salary > '150000';


