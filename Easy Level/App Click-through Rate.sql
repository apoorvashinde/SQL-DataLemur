SELECT app_id, 
round(100*round(sum(case when event_type = 'click' then 1 else 0 end),2)/
sum(case when event_type = 'impression' then 1 else 0 end),2) as ctr
FROM events
where timestamp > '2022-01-02'
and timestamp < '2023-01-01'
group by app_id