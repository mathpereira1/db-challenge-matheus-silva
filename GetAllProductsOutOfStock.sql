-- Query 3

SELECT
    p.product_id,
    p.product_name,
    p_list_price
FROM
    production.products p
LEFT JOIN
    production.stocks s ON p.product_id = s.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.list_price
HAVING
    SUM(s.quantity) = 0 OR SUM(s.quantity) IS NULL;