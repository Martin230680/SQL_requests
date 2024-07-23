/*Найдите в таблице products все товары, которые содержат фразу «Джинсы Mango».*/

SELECT * FROM products8
WHERE MATCH(`name`) AGAINST ('"Джинсы Mango"' IN BOOLEAN MODE);