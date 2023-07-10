SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS order_count,
    SUM(p.product_price) AS total_spent
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
WHERE 
    o.order_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 
    c.customer_id, c.customer_name
HAVING 
    order_count > 5
ORDER BY 
    total_spent DESC;
