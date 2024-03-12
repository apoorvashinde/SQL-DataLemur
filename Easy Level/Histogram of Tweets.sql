SELECT tweet_buckets_per_user as tweet_bucket ,
count(user_id) as users_num from 
(
SELECT COUNT(user_id) as tweet_buckets_per_user , user_id 
FROM tweets 
where tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY user_id 
)
as twt
GROUP BY tweet_bucket