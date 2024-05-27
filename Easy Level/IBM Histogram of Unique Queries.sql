with employee_queries as (
select e.employee_id, 
COALESCE(count(distinct query_id),0) as unique_queries
from employees e 
left join queries q 
on e.employee_id = q.employee_id
and query_starttime >= '07/01/2023'
and query_starttime < '10/01/2023'
group by e.employee_id 
)
select unique_queries , count(employee_id) as employee_count
from employee_queries
group by unique_queries
order by unique_queries ASC
