SELECT order_id, AVG(quantity) AS avg_quantity
FROM (SELECT * 
	FROM order_details
    WHERE quantity > 10) AS order_details
GROUP BY order_id;