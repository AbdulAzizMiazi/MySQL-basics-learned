CREATE TABLE invoices_archived AS
SELECT i.client_id,
		c.name AS client_name,
        i.invoice_id,
        i.number,
        i.invoice_total,
        i.payment_date,
        pm.name AS payment_method
FROM invoices i
JOIN clients c USING(client_id)
JOIN payments p USING(invoice_id)
JOIN payment_methods pm
		ON p.payment_method = pm.payment_method_id
WHERE payment_date IS NOT NULL
ORDER BY i.payment_date