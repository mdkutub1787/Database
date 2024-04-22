select to_number('30')
from dual;

select to_date('30-10-2024', 'DD-MM-YYYY')
from dual;

select to_date('May 24, 2024', 'Mon DD, YYYY')
from dual;

select to_char(to_date('May 24, 2024', 'Mon DD, YYYY'), 'DD-MM-YYYY')
from dual;

select nvl(commission_pct, 0), salary*12*nvl(commission_pct, 0) 
from employees;

select commission_pct, salary*12*nvl(commission_pct, 0), nvl2(commission_pct, 'Salary with Commission', 'Salary') 
from employees;

select length(first_name), length(last_name), nullif(length(first_name), length(last_name))
from employees;

select salary, commission_pct, coalesce(salary + (commission_pct * salary), salary + 2000) "New Salary"
from employees;


select first_name, job_id,
    case job_id when 'IT_PROG' then 1.10*salary
                when 'ST_CLERK' then 1.15*salary
                when 'SA_REP' then 1.20*salary
    else salary end "Revised Salary"
from employees;


select first_name, job_id,
    case when job_id = 'IT_PROG' then 1.10*salary
         when job_id = 'ST_CLERK' then 1.15*salary
         when job_id = 'SA_REP' then 1.20*salary
    else salary end "Revised Salary"
from employees;

-
select first_name, job_id,
    DECODE(job_id, 'IT_PROG' , 1.10*salary
                 , 'ST_CLERK', 1.15*salary
                 , 'SA_REP' , 1.20*salary
                 , salary)
    "Revised Salary"
from employees;