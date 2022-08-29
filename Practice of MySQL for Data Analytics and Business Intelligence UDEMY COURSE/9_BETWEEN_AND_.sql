-- employyess between 1990 01 01 and 2000 01 01

SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    -- values 1990 01 01 and 2000 01 01  INCLUDED in LIST output
    
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';
    -- values 1990 01 01 and 2000 01 01    NOT    INCLUDED in LIST output


-- Task: select all the information from "salaries " table regarding contract from 66000 to 70000 dollars per year

SELECT 
    *
FROM
    employees.salaries
WHERE
    salary BETWEEN '66000' AND '70000'; 
    
-- TASK: retrive a list with all individuals whose employees number is not between "10004' and '10012'

SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
    
    
-- task: select the names of all departemnt with numbers between 'd003' and 'd006'

SELECT 
    *
FROM
    employees.departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
    
-- another solution


SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';


    
    