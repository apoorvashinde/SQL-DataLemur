select user_id, spend, transaction_date from( select user_id, spend, transaction_date, 
row_number()over(PARTITION BY user_id order by transaction_date)rn
from transactions) a where rn >= 3
