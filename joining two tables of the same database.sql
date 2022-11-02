SELECT p.product_id, name, quantity, o.unit_price
FROM products p
JOIN order_items o ON p.product_id = o.product_id