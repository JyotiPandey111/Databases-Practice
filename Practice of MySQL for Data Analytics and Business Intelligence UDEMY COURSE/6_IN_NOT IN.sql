SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';
-- 691 rows returned.alter

-- more appropriate way to handle more than one data retrival condition is IN operator
-- faster than OR

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
    -- 691 rows returned
  
  
  SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');

-- TAsk: Use the in operator to select all individual from the emplooyess table whose first nam eis either "" Denis or "Elvis"

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');
    
    -- TAsk: extract all the records from employyes table aside from thos ewith employyees name John Mrk and Jacob
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob')
