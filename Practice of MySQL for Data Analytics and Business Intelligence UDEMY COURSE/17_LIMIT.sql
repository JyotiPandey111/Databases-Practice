SELECT 
    *
FROM
    employees.salaries;
    
    
-- quiker way by setting limits in case of finding 10 highest salaries , make limits 10 in that case.

-- make sure you set the limit to 10.
SELECT 
    *
FROM
    employees.salaries
ORDER BY salary DESC
LIMIT 10;



-- task: select first 100 rows from dept_emp table

SELECT 
    *
FROM
    employees.dept_emp
LIMIT 100;