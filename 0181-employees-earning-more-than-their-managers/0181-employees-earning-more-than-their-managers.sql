# Write your MySQL query statement below
select e.name as Employee
from employee  e
join employee e1
on e.managerid=e1.id
where
e.salary>e1.salary
