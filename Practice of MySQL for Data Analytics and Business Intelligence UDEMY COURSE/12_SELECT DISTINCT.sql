-- SELECT DISTINCT can retrieve rows from a designated column, given some criteria.alter

-- gender column from employees table from employees database
SELECT 
    gender
FROM
    employees.employees;
    
  
-- select the distincts values from gender colum of employees table from employees database
SELECT DISTINCT
    gender
FROM
    employees;
    
    
-- task: ontain alist of all different ''hire_date' from employees table.

SELECT DISTINCT
    hire_date
FROM
    employees.employees;
    