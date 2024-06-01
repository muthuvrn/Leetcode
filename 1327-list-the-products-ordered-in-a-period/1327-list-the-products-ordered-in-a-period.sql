SELECT 
    p.product_name,
    SUM(o.unit) AS unit
FROM Products p
 JOIN Orders o ON p.product_id = o.product_id 
 AND MONTH(o.order_date) = 2 
 AND YEAR(order_date) = 2020
GROUP BY o.product_id HAVING unit >= 100;