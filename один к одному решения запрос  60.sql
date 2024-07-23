/*В таблице users хранится базовая информация о пользователях, 
а в таблице users_details — подробная. Таблицы связаны отношением один-к-одному 
так, что первичные ключи в таблицах совпадают.
Получите id пользователя, его имя, фамилию и биографию в одном запросе.*/

SELECT us.id, us.first_name, us.last_name, us_d.bio FROM users15 AS us, users_details AS us_d
WHERE us.id = us_d.id;

/*В базе данных интернет-магазина по продаже красок есть две таблицы: products и products_details.
В первой хранится общая информация о краске: название, количество и цена.
А в таблице products_details содержатся дополнительные текстовые данные: описание.
Таблицы связаны отношением один-к-одному, но не через первичные ключи, а альтернативным способом. 
Первичный ключ id в таблице products связан с колонкой product_id в таблице products_details.
Получите в одном запросе id, название товара, а также всю информацию из таблицы products_details 
кроме id и product_id. Данные отсортируйте по цене.*/

SELECT p.id, p.`name`, p_d.`description`  FROM products11 AS p, products_details AS p_d
WHERE p.id=p_d.product_id
ORDER BY p.price;

/*Регистрационные данные пользователей хранятся в таблице users, а персональные данные в users_p. 
Таблицы связаны друг с другом отношением один-к-одному так, что первичные ключи совпадают.
Получите идентификатор, имя и фамилию для пользователей зарегистрировавшихся (date_joined) после полуночи 
1 января 2016 года с паспортами серия которых начинается на 32.
Отсортируйте данные по фамилии пользователей.*/

SELECT u16.id, u16.first_name, u16.last_name FROM users16 AS u16, users_p AS u_p
WHERE u16.id=u_p.id AND u16.date_joined > '2015-12-31 23:59:59' AND u_p.series LIKE '32%'
ORDER BY u16.last_name;


/*
В таблице users хранится базовая информация о пользователях, а в таблице users_details — подробная. 
Таблицы связаны отношением один-к-одному так, что первичные ключи в таблицах совпадают.
Обновите данные о пользователе c id равным 8: измените email на «karina.n@domain.com», 
а фамилию на «Никифорова». Выполните все изменения в одном SQL запросе.
*/

UPDATE users17 AS u17, users_details1 AS ud1
SET u17.email='karina.n@domain.com',
    ud1.last_name='Никифорова'
WHERE ud1.id = 8 AND ud1.id = u17.id; 
SELECT * FROM users17,users_details1
WHERE users17.id = users_details1.id; 

/*В базе данных интернет-магазина по продаже красок есть две таблицы: products и products_details.
В первой хранится общая информация о краске: название, количество, цена, категория.
А в таблице products_details содержатся дополнительные текстовые данные: описание и тд.
Таблицы связаны отношением один-к-одному. Первичный ключ id в таблице products связан с 
колонкой product_id в таблице products_details.
Очистите поле description для всех неактивных товаров. Используйте один SQL-запрос.*/
/*т к используем ранее созданные таблицы, но не хватает одной колонки active сделаем запрос на добавление сначала*/
/*ALTER TABLE products11
DROP COLUMN `active`;  */

/*ALTER TABLE products11
ADD COLUMN `active` BOOL NOT NULL DEFAULT TRUE;*/

/*update products11
SET  `active`= FALSE
WHERE id IN(2,5);
SELECT * FROM products11;*/

SELECT * FROM products11 AS pr, products_details AS pr_d
WHERE pr.id = pr_d.product_id;

UPDATE products11 AS pr, products_details AS pr_d
SET pr_d.description = ''
WHERE pr.id = pr_d.product_id AND pr.active = false;
SELECT pr.id, pr.name, pr.count, pr.price, pr.active, pr_d.description FROM products11 AS pr, products_details AS pr_d
WHERE pr.id = pr_d.product_id;

/*Иногда нужно удалить данные из одной таблицы, основываясь на условиях другой. 
Для этого в конструкции DELETE предусмотрен специальный оператор USING.
Разберем на примере ниже, как он работает.
1. В первой строке мы пишем из какой таблицы будем удалять — table2.
2. Затем с помощью USING и JOIN указываем, что эта таблица связана с таблицей table1.
3. Далее идет блок WHERE, где мы сперва задаем связь между двумя таблицами — через их id.
4. И в конце мы указываем условие удаления table1.id < 10.
Получается, что мы удаляем данные из таблицы table2, но по условию в таблице table1.
DELETE FROM table2
USING table1 JOIN table2
WHERE 
    table2.id = table1.id AND 
    table1.id < 10;
Пользуясь этим шаблоном, удалите из таблицы users_details биографии неактивных пользователей.*/

DELETE FROM users_details2 
USING users18  join users_details2
WHERE users_details2.id = users18.id AND 
users18.active = FALSE;

SELECT * FROM users18 AS u18, users_details2 AS u_d2
WHERE u18.id = u_d2.id;
