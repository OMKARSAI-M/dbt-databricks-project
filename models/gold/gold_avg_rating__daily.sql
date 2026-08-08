SELECT
date(date_format(r.created_at,'yyyy-MM-dd')) AS review_date,
r.product_id,
p.product_name,
avg(r.rating) AS avg_rating
FROM {{ref('bronze_reviews')}} AS r 
LEFT JOIN {{ref('silver_products')}} AS p 
ON r.product_id = p.id
GROUP BY all