-- IS NO NULL used to extract values that are not null

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
-- no values is missing 


-- Task: select the name sof all the departmet ehose department number values is not null

SELECT 
    dept_name
FROM
    employees.departments
WHERE
    dept_no IS NOT NULL;
    
