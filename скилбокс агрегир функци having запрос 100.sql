/*Выведите статистику по каждому повторяющемуся товару: его название, 
количество повторений, минимальное количество, среднее количество 
и максимальное количество.*/

SELECT NAME, COUNT(name) AS cnt, MIN(`count`) AS min_count, max(`count`) AS max_count, ROUND (AVG(`count`),2) AS avg_count
FROM good GROUP BY `NAME`
HAVING cnt > 1
ORDER BY cnt DESC;


/*
Выведите имя, email, общие траты и среднее количество заказанных товаров для пользователей, 
которые:
суммарно потратили больше 1000 рублей,
имеют почтовый адрес с доменом Великобритании,
сделали более одного заказа.
*/

SELECT u.`name`, u.email, sum(g.`price`*o2g.count) AS total,
round(AVG(o2g.`count`),0) AS avg_order, COUNT(o2g.count) AS kol_zakaz
FROM `user` AS u
JOIN `order` AS o ON o.user_id=u.id
JOIN order2good AS o2g ON o2g.order_id = o.id
JOIN good AS g ON g.id = o2g.good_id
GROUP BY u.`name`
HAVING 
`total` > 1000 AND u.`email` LIKE '%.uk' AND kol_zakaz>1
ORDER BY u.`name`
