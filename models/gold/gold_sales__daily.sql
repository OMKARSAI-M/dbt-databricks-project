SELECT 
    o.order_date,
    p.product_name,
    p.category,
    p.vendor,
    u.city,
    u.state,
    u.sales_channel,
    sum(o.order_amount) as total_revenue
FROM  
{{ref('silver_orders')}} AS o 
LEFT JOIN {{ref('silver_products')}} AS p 
ON o.product_id = p.id 
LEFT JOIN {{ref('silver_users')}} AS u 
ON o.user_id = u.id
GROUP BY all