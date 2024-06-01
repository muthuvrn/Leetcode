SELECT t.request_at AS 'Day', ROUND(SUM(
    IF(t.status LIKE 'ca%', 1, 0)
    )/COUNT(*),2) AS "Cancellation Rate"
FROM Trips t
JOIN Users clients
    ON t.client_id = clients.users_id
        AND clients.banned = 'No'
JOIN Users drivers
    ON t.driver_id = drivers.users_id
        AND drivers.banned = 'No'
WHERE t.request_at
    BETWEEN '2013-10-01'
        AND '2013-10-03'
GROUP BY  t.request_at;