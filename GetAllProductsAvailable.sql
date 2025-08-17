SELECT
    p.product_id,
    p.product_name,
    p.list_price,
    SUM(s.quantity) As total_stock,
    COUNT(s.store_id) AS stores_with_stock
FROM
    production.products p
JOIN 
    production.stocks s ON p.product_id = s.product_id
WHERE
    s.quantity > 0
GROUP BY
    p.product_id,
    p.product_name
ORDER BY
    total_stock DESC;