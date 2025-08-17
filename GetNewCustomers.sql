-- Query 1
SELECT 
    c.customer_id,
    c_first_name,
    c.last_name,
    c.email
FROM
    sales.customers c
LEFT JOIN
    sales.orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;