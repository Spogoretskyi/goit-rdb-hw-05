SELECT *, (
	SELECT customer_id 
    FROM orders
    WHERE order_details.order_id = id) AS orders_customer_id
FROM order_details