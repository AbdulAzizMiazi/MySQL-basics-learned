USE sql_store;

UPDATE orders
SET comments = "Golden Customer"
Where customer_id IN (
	SELECT c.customer_id
	FROM customers c
	WHERE c.points > 3000)
