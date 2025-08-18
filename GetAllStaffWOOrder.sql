-- Query 5
SELECT
    s.staff_id,
    s.first_name,
    s.last_name,
    s.email,
    st.store_name
FROM
    sales.staffs s
LEFT JOIN
    sales.orders o ON s.staff_id = o.staff_id
JOIN
    sales.stores st ON s.store_id = st_store_id
WHERE
    o.order_id IS NULL;