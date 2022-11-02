SELECT *
FROM customers
-- WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
-- WHERE  address LIKE "%trail%" OR 
-- 		address LIKE "%avenue%" OR
--         phone LIKE "%9"
-- WHERE last_name REGEXP "field$|mac|^rose"
-- WHERE last_name REGEXP '[gim]e'  -- valid for: ge, ie, me
-- WHERE last_name REGEXP '[a-h]e'
WHERE  first_name IN ('ELKA', 'AMBUR') OR
		last_name REGEXP "EY$|ON$|^MY|SE|B[RU]"