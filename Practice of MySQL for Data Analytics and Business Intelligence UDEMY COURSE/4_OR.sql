-- WHERE CODE 232
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';

-- AND CODE 140
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';
    
-- denis female 92



-- OR CODE 478 
-- combination of two records
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' OR first_name = 'Elvis';
-- Denis 232
-- Elvis 246

-- same query with and
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND first_name = 'Elvis';

-- TASK: Retrieve a list with all employees whose first name is either Kellie or Aruna.

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';
        
-- 432 rows effected

