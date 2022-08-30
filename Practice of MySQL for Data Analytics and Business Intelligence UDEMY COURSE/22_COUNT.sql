-- from here on we will understand the aggregate functions(summarizing functions) in sql COUNT SUM MIN MAX AVG and many more.

-- practice:

SELECT 
    *
FROM
    employees.salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(salary)
FROM
    employees.salaries;
    
-- 967330 records available

SELECT 
    COUNT(*)
FROM
    employees.salaries;
    -- 967330 records available
    
    
-- how many empoyees start dates are in database?

SELECT 
    COUNT(from_date)
FROM
    employees.salaries;
    -- 967330 records available.

-- NO Of times unique values encountered in a given column
SELECT 
    COUNT( distinct from_date)
FROM
    employees.salaries;
    -- 6392 is the correct answer of the question. not 967330
    
    
-- task: how many department are their in employees datavase

SELECT 
    COUNT(DISTINCT dept_no)
FROM
    employees.dept_emp;