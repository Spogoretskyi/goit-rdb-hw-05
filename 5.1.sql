SELECT 
	id,
	order_id,
    product_id,
    Divide(quantity, 3) AS devided_quantity
FROM order_details 