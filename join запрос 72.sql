/*
На сайте интернет-магазина нужно выводить только те категории, 
в которых есть товары.
Получите имена категорий, в которых есть товары, а также количество 
товаров в каждой категории.
Данные выведите в двух колонках:
1. category с именем категории;
2. products с количеством товаров.
Отсортируйте итоговую таблицу по имени категории.
*/

SELECT SUM(p13.`count`) AS `products`, cat.`name` as category
FROM products13 AS p13
JOIN categories2 AS cat ON cat.id=p13.category
WHERE p13.count > 0
GROUP BY cat.`name`
ORDER BY cat.`name`;
