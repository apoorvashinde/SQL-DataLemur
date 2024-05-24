select distinct e.user_id
from emails e
join texts t
on t.email_id = e.email_id
where t.action_date = e.signup_date + interval '1 day'
and signup_action = 'Confirmed'
