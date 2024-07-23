/*Выведите родительскую категорию, количество элементов в такой категории и столбец со значением «чётное» или «нечётное» для количества таких элементов.
*/SELECT
    `parent_id`,
    COUNT(*) as `count`,
    IF(
        COUNT(*) % 2 = 0,
        'чётное',
        'нечётное'
    ) as `even_or_odd`
FROM `good_category`
GROUP BY `parent_id`;
/*Выведите идентификатор категории, имя, количество и «статус» товаров, общая стоимость которых не менее 390 000 рублей, двумя способами: с IF и с CASE.
Определим «статус» как величину, зависящую от самого товара:
Если товар не принадлежит к корневой категории чая, то его статус ‘NOT TEA’.
Если это чай и его более 500 штук, то статус ‘ENOUGH’.
В противном случае ‘NOT ENOUGH’.

1)*/
SELECT
   g.category_id,
    g.`name`,
    g.`count`,
    IF(
        gc2.name = 'Чай',
        IF (g.`count` > 500, 'ENOUGH', 'NOT ENOUGH'),
        'NOT TEA'
    ) as `status`
FROM `good` as g
JOIN `good_category` as gc ON gc.id = g.category_id
JOIN `good_category` as gc2 ON gc2.id = gc.parent_id
WHERE g.`count` * g.`price` > 390000;

/*2)*/
SELECT
    g.category_id,
    g.`name`,
    g.`count`,
    CASE
        WHEN gc2.`name` != 'Чай' THEN 'NOT TEA'
        WHEN g.`count` > 500 THEN 'ENOUGH'
        ELSE 'NOT ENOUGH'
    END AS `status`
FROM `good` g
JOIN `good_category` gc ON gc.id = g.category_id
JOIN `good_category` gc2 ON gc2.id = gc.parent_id
WHERE g.`count` * g.`price` > 390000;


/*Выведите все уникальные почтовые домены верхнего уровня длиной в три символа.*/
SELECT DISTINCT
    REPLACE(SUBSTR(`email`, -3), '.', '') `domain`
FROM `user`
WHERE CHAR_LENGTH(REPLACE(SUBSTR(`email`, -3), '.', '')) = 3;
/*
Выведите родительские категории и все товары, входящие в них, а 
также их количество. Комментарий: чтобы трюк получился, нужно сделать
 JOIN таблицы с самой собой. */

SELECT
    gc2.`name`,
    GROUP_CONCAT(TRIM(gc.`name`) SEPARATOR ', ') `goods`,
    COUNT(*) `goods_cnt`
FROM `good_category` gc
JOIN `good_category` gc2 ON
    gc2.id = gc.parent_id
GROUP BY gc.parent_id;
/*
Выведите строки формата ‘Статус заказа номер <order id> пользователя “<user name>”
изменился <дата без времени> с <src status code> на <dst status code>’ для заказов,
которые переходили со статусов «Доставлен» 
на «Оплачен» и созданных 25 мая 2015 года.*/

SELECT
    CONCAT(
        'Статус заказа номер ',
        o.id,
        ' пользователя "',
        u.`name`,
        '" изменился ',
        SUBSTR(osc.`time`, 1, 10),
        ' с ',
        os_src.`code`,
        ' на ',
        os_dst.`code`
    ) `history`
FROM `user` u
JOIN `order` o ON
    o.user_id = u.id
JOIN `order_status_change` osc ON
    osc.order_id = o.id
JOIN `order_status` os_src ON
    os_src.id = osc.src_status_id
JOIN `order_status` os_dst ON
    os_dst.id = osc.dst_status_id
WHERE
    osc.src_status_id = 6 AND
    osc.dst_status_id = 7 AND
    o.creation_date >= '2015-05-25' AND
    o.creation_date < '2015-05-26';


