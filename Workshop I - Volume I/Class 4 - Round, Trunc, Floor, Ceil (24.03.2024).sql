select round(45.624, 2), round(45.923, 0), round(376.923, -2) 
from DUAL;

-- (49.26, -2) = 0
-- (59.26, -2) = 100
-- (376.923, -2) = 400
-- (336.923, -2) = 300

select trunc(45.624, 1), trunc(45.923), trunc(376.923, -2) 
from DUAL;

select ceil(45.624), floor(45.923), mod(302, 100) 
from DUAL;