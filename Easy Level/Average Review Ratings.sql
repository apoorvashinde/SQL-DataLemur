select EXTRACT(Month from submit_date) as mth,product_id as product,
ROUND(avg(stars),2) as avg_stars 
from reviews
group by mth,product_id 
order by mth ASC