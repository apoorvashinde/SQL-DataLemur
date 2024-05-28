SELECT ROUND(sum(item_count::decimal*order_occurrences)/sum(order_occurrences),1) as mean
FROM items_per_order
