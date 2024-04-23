create user kutub
identified by yolo;

alter user kutub
identified by yolo2;

grant create session, create table, create sequence, create view
to kutub;


-- role
create role manager;

grant create table, create view
to manager;

grant manager to kutub;



grant select
on employees
to public; 

grant update(department_name, location_id)
on departments
to sana, manager;


grant select, insert
on departments
to kutub
with grant option;


revoke select, insert
on departments
from kutub;