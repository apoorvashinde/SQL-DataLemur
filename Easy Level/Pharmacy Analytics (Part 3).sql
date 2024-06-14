SELECT manufacturer, 
concat('$',ROUND(SUM((total_sales)/1000000),0),' million')
as sales_mil
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) desc, manufacturer ASC