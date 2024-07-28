WITH tmp_table AS (
	SELECT * 
		FROM order_details
		WHERE quantity > 10
)
SELECT order_id, AVG(quantity) AS avg_quantity
FROM tmp_table
GROUP BY order_id;