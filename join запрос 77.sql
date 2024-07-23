/*В таблице products находятся товары, а в categories — категории, 
к которым они относятся. Поле category_id является внешним ключом, 
который указывает на первичный ключ категории.

Получите в одном запросе имя товара, цену товара и имя категории, к которой принадлежит товар.
Отсортируйте данные в алфавитном порядке по имени товара.
Имя категории выведите в колонке с именем category.
Если у товара нет категории, то выведите NULL.*/

/*UPDATE products10 SET category_id = NULL
WHERE id IN (3,4,9,19);*/

SELECT p10.`name` , p10.price, c.name AS category
FROM products10 AS p10
left outer JOIN categories AS c
ON p10.category_id=c.id
ORDER BY p10.`name`;
