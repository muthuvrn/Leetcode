select
department,employee,salary
from
(
   select d.name as Department,
   e.name as Employee,
   e.salary ,
   dense_rank() over(partition by d.name order by salary desc )rnk
   from employee e
   join department d
   on e.departmentid=d.id)
   as t
   where t.rnk<=3;
   

