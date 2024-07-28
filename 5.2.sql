SELECT 
	id,
	order_id,
    product_id,
    Divide(quantity, 0) AS devided_quantity
FROM order_details 