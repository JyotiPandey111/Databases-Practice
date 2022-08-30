-- GROUPING ACC TO SPECIFIC FIELD

-- select column_names
-- from table_name
-- where conditions --
-- group by column_names
-- order by column_names;


SELECT 
    first_name
FROM
    employees.employees
GROUP BY first_name;


SELECT DISTINCT
    first_name
FROM
    employees;
    
-- first_name ------ the number of times each employyes visible in table
SELECT 
    first_name, COUNT(first_name) AS names_count   -- aliasing for more professional output
FROM
    employees.employees
GROUP BY first_name
ORDER BY first_name DESC;



/*
task: write a query tha obtains two columns, the first column must contain annual salaries higher than 80000 dollars.
the second column renamesd to "emps_with_same_salary", must show the numer of employees contracted to the slary. 
leastly sort the output by the first column
*/
SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    employees.salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;

