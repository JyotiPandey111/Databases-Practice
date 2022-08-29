SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND gender = 'M' OR gender = 'F';

-- and>or

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND (gender = 'M' OR gender = 'F');
    
-- 165 rows affected.
