select
q.person_name
from queue q
join queue r
on q.turn>=r.turn
group by q.turn
having sum(r.weight)<=1000
order by sum(r.weight) desc
limit 1
