--Using Having clause

select city , count(order_id) as total_orders from trades t
join users u on t.user_id = u.user_id
where status = 'Completed'
group by city 
having count(order_id) > 1
order by total_orders desc


--Using Limit 

select city , count(order_id) as total_orders from trades t
join users u on t.user_id = u.user_id 
where status = 'Completed'
group by city 
order by total_orders desc 
limit 3
