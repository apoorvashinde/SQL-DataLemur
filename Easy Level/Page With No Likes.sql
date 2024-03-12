select p.page_id
from pages p
left join page_likes pl
on p.page_id = pl.page_id
group by p.page_id
having count(liked_date) = 0
order by page_id ASC;