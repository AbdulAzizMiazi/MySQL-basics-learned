USE sql_invoicing;

SELECT p.date,
		c.name AS client,
        p.amount,
        pm.name AS "Payment Method"
FROM payments p
JOIN clients c
	USING (client_id) -- use using() keyword only when columns of both tables have the same name!
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id