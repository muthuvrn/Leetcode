# Write your MySQL query statement below
select
id,
coalesce (
    case when id%2=0 then lag(student) over()
    else lead(student) over()
end,student
)student
from seat
