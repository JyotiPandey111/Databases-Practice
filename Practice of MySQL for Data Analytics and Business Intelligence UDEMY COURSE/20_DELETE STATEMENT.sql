SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999903;
    
    
SELECT 
    *
FROM
    employees.titles
WHERE
    emp_no = 999903;
    

-- to_date: null he is still working the company.


DELETE FROM employees.employees 
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999903;
    
    
SELECT 
    *
FROM
    employees.titles
WHERE
    emp_no = 999903;
-- 999904 is deleted from both tables emppys and titles only by deleteing it from employee, this is because there is connection between the two tables.
-- ON DELETE CASCADE WAS USED IN HERE WHILE DEFINING THE TABLE SCHEMA.

ROLLBACK;


SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999903;
    
    
SELECT 
    *
FROM
    employees.titles
WHERE
    emp_no = 999903;




SELECT 
    *
FROM
    employees.departments_dup
ORDER BY dept_no;


DELETE FROM employees.departments_dup;


ROLLBACK;
-- retrived non commitedd
-- do use where clause with delete very important.



-- task: remove the departemnt no 10 record from department table

SELECT 
    *
FROM
    employees.departments limit 10;
    
DELETE FROM employees.departments 
WHERE
    dept_no = 'd010';