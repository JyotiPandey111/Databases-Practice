-- REFINE OUTPUT

-- till now the query output was ordered by emp_no by default. now we can change te output on the other column

SELECT 
    *
FROM
    employees.employees
ORDER BY first_name; -- ascending by default


-- desencing order 
SELECT 
    *
FROM
    employees.employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees.employees
ORDER BY emp_no DESC;


SELECT 
    *
FROM
    employees.employees
ORDER BY first_name, last_name ASC;



-- task: select all te dat from the meployeses table ordering it by hire_date in descending order
SELECT 
    *
FROM
    employees.employees
ORDER BY hire_date DESC;



