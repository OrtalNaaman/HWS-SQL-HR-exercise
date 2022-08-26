--1
select e.first_name, e.last_name, d.department_id, d.department_name 
from employees e
join departments d 
on e.department_id = d.department_id

--2
select e.first_name, e.last_name, d.department_name, l.city, l.state_province
from employees e
join departments d 
on e.department_id = d.department_id
join locations l 
on d.location_id = l.location_id

--3
select e.first_name, e.last_name, e.salary, jg.grade_level
from employees e
join job_grades jg 
on e.salary >= jg.lowest_sal and e.salary <= jg.highest_sal

--4
select e.first_name, e.last_name, d.department_id, d.department_name
from employees e
join departments d
on e.department_id = d.department_id
where d.department_id = 8 or d.department_id = 4

--5
select e.first_name, e.last_name, d.department_name, l.city, l.state_province
from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
where e.first_name like '%z%'

--6
select e.first_name, e.last_name, d.department_id, d.department_name
from employees e
right join departments d 
on e.department_id = d.department_id

--7
select e.first_name, e.last_name, e.salary
from employees e
join employees e179 
on e179.employee_id = 179  
and e.salary < e179.salary

--8
select e.first_name as employee_name, m.first_name as manager_name
from employees e
join employees m
on e.manager_id = m.employee_id

--9
select d.department_name, l.city, l.state_province
from departments d
join locations l
on d.location_id = l.location_id

--10
select e.first_name, e.last_name, d.department_id, d.department_name
from employees e
left join departments d 
on e.department_id = d.department_id

--11
select e.first_name as employee_name, m.first_name as Manager
from employees e
left join employees m 
on e.manager_id = m.employee_id

--12
select e.first_name, e.last_name, e.department_id
from employees e
join employees Taylor_depatment 
on e.department_id = Taylor_depatment.department_id
where Taylor_depatment.last_name = 'Taylor'

--13
select j.job_title, d.department_name, e.first_name+' '+e.last_name as employee_name, jh.start_date
from employees e
join jobs j 
on e.job_id = j.job_id
join departments d 
on e.department_id = d.department_id
join job_history jh 
on e.employee_id = jh.employee_id
where jh.start_date >= '1993-01-01' and jh.start_date<= '1997-08-31'

--14
select j.job_title, e.first_name+' '+e.last_name as employee_name, j.max_salary-e.salary as salary_difference
from employees e
join jobs j on e.job_id = j.job_id

--15
select d.department_name, AVG(e.salary) as average_salary, COUNT(e.employee_id) as employees
from employees e
join departments d 
on e.department_id = d.department_id
group by d.department_name
