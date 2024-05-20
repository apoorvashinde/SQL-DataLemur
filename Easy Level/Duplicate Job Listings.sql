with jobcount_cte as (select company_id, title, description,
count(job_id) as job_count
from job_listings
group by company_id, title, description
having count(company_id) > 1
)
select count(company_id) as duplicate_companies
from jobcount_cte