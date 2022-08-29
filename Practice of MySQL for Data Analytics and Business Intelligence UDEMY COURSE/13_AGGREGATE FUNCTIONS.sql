-- they applied on multiple rows of the single column of a table and return an output of a single value

-- COUNT(), SUM(), MIN(), MAX(), AVG()


-- how many employees are registered on our database?
SELECT 
    COUNT(emp_no)
FROM
    employees;
    -- 300034
    
    
    
 -- different names in employees table
 SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    -- 1275
    
    
-- task: how many annual contracts with a value higher than or equal to 100000 have been registerd in the slaries table.?
SELECT 
    COUNT(*)
FROM
    employees.salaries
WHERE
    salary >= 100000;
-- 32207
    
-- task: how many managers do we have in the employees database? 
SELECT 
    COUNT(*)
FROM
    employees.dept_manager;
    -- 24

