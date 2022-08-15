--1
select e.first_name, e.last_name, d.department_id, d.department_name 
from employees e
join departments d 
on e.department_id = d.department_id

--2
select e.first_name, e.last_name, d.department_name, l.city, l.state_province
from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id

--3
select e.first_name, e.last_name, e.salary, jg.grade_level
from employees e
join job_grades jg on e.salary >= jg.lowest_sal and e.salary <= jg.highest_sal