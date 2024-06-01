# Write your MySQL query statement below
select Department, Employee,Salary
 from
(
select d.name as Department,e.name Employee,e.Salary,
dense_rank() over(partition by d.name order by salary desc) rnk
from employee e
join department d
on e.departmentid=d.id
)t
where t.rnk=1