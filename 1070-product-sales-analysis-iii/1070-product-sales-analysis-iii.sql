# Write your MySQL query statement below
SELECT product_id, year AS first_year, quantity, price
FROM Sales
EXCEPT
SELECT s1.product_id, s1.year, s1.quantity, s1.price
FROM Sales s1
JOIN Sales s2 ON s1.product_id = s2.product_id AND s1.year > s2.year;
