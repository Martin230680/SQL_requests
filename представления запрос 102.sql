/*Используя представления, выведите все уникальные почтовые домены верхнего уровня длиной в три символа.*/

/*CREATE VIEW tab1 AS(
SELECT DISTINCT(substring_index(email,'.',-1)) AS domen FROM USER having CHAR_LENGTH(domen) = 3);*/

SELECT * FROM tab1;
/*
Выведите идентификатор категории и общую стоимость товаров в каждой категории, 
в которой более 50 наименований. Воспользуйтесь представлениями.*/
/*CREATE VIEW tab2 AS(
SELECT category_id, SUM(price*COUNT) AS total 
FROM good 
GROUP BY category_id HAVING COUNT(*)>50);*/
SELECT * FROM tab2;
/*
Создайте представление с ID пользователя, ID заказа и общей стоимостью внутри
такого пользовательского заказа, который переходил из статуса «Доставлен» в статус 
«Оплачен». Выведите содержимое представления.*/
/*
CREATE VIEW tab3 AS(
SELECT u.id AS `user_id`, o.id AS `order_id`, sum(o2g.count*g.price) AS total FROM `user` AS u
JOIN `order` AS o ON o.user_id=u.id
JOIN `order2good` as o2g ON o2g.order_id = o.id
JOIN `good` as g ON g.id = o2g.good_id
JOIN `order_status_change` as osc ON osc.order_id = o.id
WHERE osc.src_status_id = 6 AND osc.dst_status_id = 7
group BY u.id, o.id
ORDER BY total
); 
*/
SELECT * FROM tab3;
/*
Используя полученное в предыдущем задании представление, выведите:
ID пользователя;
строку со всеми товарами, которые были у пользователя в максимальном
 по общей стоимости заказе. Выводите товары, разделяя их запятой. Пробелы 
 должны стоять только после запятой;
ID такого заказа;
общую стоимость. Если есть несколько заказов с одинаковой стоимостью, 
такого пользователя не рассматривайте.
///////////////////////////////
CREATE OR REPLACE VIEW `users_orders` AS
SELECT
    u.id user_id,
    o.id order_id,
    SUM(o2g.count * g.price) total_price
FROM `user` u
JOIN `order` o ON
    o.user_id = u.id
JOIN `order2good` o2g ON
    o2g.order_id = o.id
JOIN `good` g ON
    g.id = o2g.good_id
JOIN `order_status_change` osc ON
    osc.order_id = o.id
WHERE
    osc.src_status_id = 6 AND
    osc.dst_status_id = 7
GROUP BY u.id, o.id;
//////////////////////////////
*/

SELECT
    uo.user_id,
    uo.order_id,
    GROUP_CONCAT(TRIM(g.name) SEPARATOR ', ') `goods`,
    max_order_price order_price
FROM `users_orders` uo
JOIN (
    SELECT uoi.user_id, MAX(uoi.total_price) `max_order_price`
    FROM `users_orders` uoi
    GROUP BY uoi.user_id
) muo ON
    muo.user_id = uo.user_id AND `max_order_price` = uo.total_price
JOIN `order` o ON
    o.id = uo.order_id
JOIN `order2good` o2g ON
    o2g.order_id = o.id
JOIN `good` g ON
    g.id = o2g.good_id
GROUP BY uo.user_id
HAVING COUNT(DISTINCT uo.order_id) = 1;

