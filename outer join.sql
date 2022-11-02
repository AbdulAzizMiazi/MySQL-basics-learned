-- NOTE: "LEFT JOIN" dile, 
-- "FROM DB"-e zei table thakbe, tar shob data show hobe.
-- ar zei DB-ke join kora hobe tar data-gulu ashobe ager database-er upor depend kore
-- kintu, join kora DB-r zodi kono data missing thake tahole, ta NULL hishabe dekhano hobe.
-- "RIGHT JOIN" use kora hole, shompurno bepar-ta biporit hobe.
-- tai, declare kora DB ar zei column-er shokol data dorkar, tader upor depend kore "right join" or "left join" choose korte hobe!

USE  sql_store;

SELECT p.product_id,
		p.name,
        oi.quantity
        
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id

-- USE  sql_store;

-- SELECT p.product_id,
-- 		p.name,
--         oi.quantity
--         
-- FROM order_items oi
-- RIGHT JOIN products p
-- 	ON oi.product_id = p.product_id