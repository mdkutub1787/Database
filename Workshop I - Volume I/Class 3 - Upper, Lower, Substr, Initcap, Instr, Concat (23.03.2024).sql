select upper(first_name), lower(last_name), salary 
from employees
where first_name = initcap('Payam');

select upper(first_name), upper(last_name), salary
from employees
where upper(first_name) = 'PAYAM';

select concat(upper(first_name), ' ') || upper(last_name), salary
from employees
where upper(first_name) = 'PAYAM';

select substr(first_name, 2, 3), salary 
from employees
where first_name = initcap('Payam');

select first_name, instr(first_name, upper('A')), salary
from employees
where instr(first_name, upper('A')) = 1; --where first_name like 'A%';

select first_name, instr(first_name, upper('A')), salary, rpad(first_name, 6, '*')
from employees
where first_name like 'A%';

select * 
from employees 
where substr(job_id, 1, 2) = 'IT';


select first_name,job_id,concat(substr(first_name, 2, 2), lower(substr(job_id, 1,2))) as "ID"
from employees
order by first_name;