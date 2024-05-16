select sender_id , count(content) from messages
where sent_date >= '08/01/2022' and sent_date <= '08/31/2022'
group by sender_id
having count(content) > 1
order by sender_id desc;
