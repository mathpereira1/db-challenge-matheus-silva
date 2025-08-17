-- Query 4
SELECT
    st.store_name,
    b.brand_name,
    SUM(oi.quantity) As total_items_sold
FROM
    sales.stores st
JOIN
    sales.orders o ON st.store_id = o.store_id
JOIN
    sales.order_items oi ON o.order_id = oi.order_id
JOIN
    production.products p ON oi.product_id = p.product_id
JOIN
    production.brands b on p.brand_id = b.brand_id
WHERE
    b.brand_name = @BrandName
GROUP BY
    st.store_name,
    b.brand_name
ORDER BY
    total_items_sold DESC;