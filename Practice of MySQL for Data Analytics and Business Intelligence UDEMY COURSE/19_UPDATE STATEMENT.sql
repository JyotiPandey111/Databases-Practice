-- practice: update employee number 999901


USE employees;
SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999901;
    
    
UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;
    
    
SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999901;

COMMIT;
    
    
-- important to commit what changes you made other wise on rollback every changes will dissapear, you may loose hours of work.alter

-- TASK: CHANGE THE BUSINESS ANALYSIS DEPARTMENT TO DATA ANALYSIS 

SELECT 
    *
FROM
    employees.departments
LIMIT 10;

UPDATE employees.departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';

SELECT 
    *
FROM
    employees.departments
ORDER BY dept_no DESC
LIMIT 10 ;
