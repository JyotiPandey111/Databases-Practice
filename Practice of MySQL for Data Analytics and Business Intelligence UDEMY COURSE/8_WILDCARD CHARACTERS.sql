-- % _ *     WILDCARD CHARACTERS: wild guess

-- mar%: mar martin 
-- mar_ : mark mart
-- *:   deliver list of all columns in atable


-- TAsk: extract all the individuals from the emplooyes table whose first_name contains "Jack"

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');
    
    
    
-- TAsk: name of employyes do not contain 'Jack'

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');