/*Получить перечень заказов общая стоимость которых более 1000*/

SELECT o.id, SUM(o2g.count*g.price) AS totalprice
FROM `order` AS o
JOIN order2good AS o2g ON o2g.order_id=o.id
JOIN good AS g ON g.id=o2g.good_id
GROUP BY o.id
HAVING totalprice >1000;