-- NOTE: To update multiple records in MySQL, you need to first turn off the "Safe Update" option from Edit -> preferences -> SQL Editor. Therewise, an error will occure!
USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < "1990-01-01"