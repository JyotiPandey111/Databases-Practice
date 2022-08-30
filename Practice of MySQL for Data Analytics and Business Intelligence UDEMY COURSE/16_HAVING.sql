/*
having: refine the output from records that do not satisfy a certain condition
it is like where but it applied to the group by clause
where applied to the select clause.

-- select column_names
-- from table_name
-- where conditions 
-- group by column_names
-- having conditions   
-- order by column_names;
*/


SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';
    -- 13 rows returned

SELECT 
    *
FROM
    employees
HAVING
    hire_date >= '2000-01-01';
    -- 13 rows affected
    
   
   
 -- first_name ------ the number of times each employyes visible in table
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees.employees
WHERE
    COUNT(first_name) > 250
GROUP BY first_name
ORDER BY first_name DESC;
  -- error: invalid use of gropu function 
-- correction: use having after group by instead of where
-- where(condition can not be a aggregate function)
-- having (condition can be a aggreate function)
   
   
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees.employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

-- task: Select all employees whose avg salary is higher than 120000 per annum. compare the output obtained with th eoutput of the following two queries:

SELECT 
    *, AVG(salary) as Average_Salary
FROM
    employees.salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;
-- 807 rows returned  




SELECT 
    *, AVG(salary) AS Average_Salary
FROM
    employees.salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;
-- 101 rows returned

SELECT 
    emp_no, AVG(salary)
FROM
    employees.salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;
-- 101 rows



-- WHERE VS HAVING
-- task: Extract the list of all names that are encountered less than 200 times. let the data refer to people hired after the 1st jan 1999.
-- < 200 times is a aggresgate function that is why it will be used with HAVING.

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees.employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name)<200
ORDER BY first_name DESC;
 
/* 
insignts:
first_name is used too often in query.
DONOT mix the aggregate and non aggregate conditions in HAVING CLAUSE
*/


-- task: select the employee numbers of all individual who have signed more than 1 contract after the 1 jan 2000

SELECT 
    emp_no, COUNT(emp_no) AS Employee_Count
FROM
    employees.dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1
ORDER BY emp_no;