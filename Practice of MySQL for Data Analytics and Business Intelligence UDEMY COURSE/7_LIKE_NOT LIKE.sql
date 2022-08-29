-- PATTERN MATCHING
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('MAr%');
    
    
    
-- PATTERN MATCHING
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
    
    
-- PATTERN MATCHING
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%');
    
    
-- PATTERN MATCHING
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');
    
    
-- CASE INSENSITIVE Mar= mar = mAr

    -- TASK: like operators to select the data about all individals, whose first name starts with Mark specify that name canbe suceeded by any sequence od characaters
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
    
  -- Task: retrive all the employess whi have been hired in year 2000

SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
    
    
 -- Task: retrive te list of all eploye whosse number is written with 5 characters and starts with "1000'
 
 SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');