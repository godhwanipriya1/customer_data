create table busniess_unit(
	emp_id varchar(200),
	Annual_Salary varchar(150),
	Ethnicity varchar(50))
SELECT * FROM busniess_unit
select * from customer_data

select c.emp_id,c.full_name,c.job_title,c.department,b.ethnicity from customer_data as c
inner join busniess_unit as b
on c.emp_id = b.emp_id

---group by, having, order by, limit, inner join, avg
	
select c.emp_id, c.full_name ,c.job_title,c.department, avg (c.age), b.annual_salary,b.ethnicity from customer_data as c
inner join busniess_unit as b
on c.emp_id = b.emp_id
group by c.emp_id, c.full_name, c.job_title,c.department,b.annual_salary,b.ethnicity
having sum(c.age) > 46
order by avg (c.age)
limit 10
offset 10

select c.emp_id, c.full_name ,c.job_title,c.department, avg (c.age), b.annual_salary,b.ethnicity from customer_data as c
left join busniess_unit as b
on c.emp_id = b.emp_id
group by c.emp_id, c.full_name, c.job_title,c.department,b.annual_salary,b.ethnicity
having sum(c.age) > 46
order by avg (c.age)
limit 10

select c.emp_id, c.full_name ,c.job_title,c.department, avg (c.age), b.annual_salary,b.ethnicity from customer_data as c
right join busniess_unit as b
on c.emp_id = b.emp_id
group by c.emp_id, c.full_name, c.job_title,c.department,b.annual_salary,b.ethnicity
having sum(c.age) > 46
order by avg (c.age)
limit 10

select c.emp_id, c.full_name ,c.job_title,c.department, avg (c.age), b.annual_salary,b.ethnicity from customer_data as c
full join busniess_unit as b
on c.emp_id = b.emp_id
group by c.emp_id, c.full_name, c.job_title,c.department,b.annual_salary,b.ethnicity
having sum(c.age) > 46
order by avg (c.age)
limit 10

