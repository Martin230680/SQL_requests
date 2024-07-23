DROP TABLE if EXISTS products13;
CREATE TABLE products13(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(100),
brand INTEGER UNSIGNED ,
category INTEGER UNSIGNED,
`count` INTEGER UNSIGNED,
price INTEGER UNSIGNED,
sizes SET('32','34','36','38','40','42','44','46','48','50','52','54','56','M','L','S','X','XL','XS','2XL')
);
INSERT INTO products13(`name`,brand,category,`count`,price,sizes)
VALUES
('Джинсы Mango Lonny2',1,1,3,2990,'34,36,38,42'),
('Куртка Magno Nico2',1,2,2,4999,'S,M,L'),
('Платье Love Republic',2,3,7,3699,'40,46,48'),
('Джинсы Mango Kim2',1,1,3,2499,'34,36,38,40'),
('Жилет Zarina',3,4,7,2519,'42,46,50,52'),
('Юбка Mango Park',1,5,2,3999,'34,36,38,40'),
('Комплект Mango (джинсы Lonny 2 и косуха)',1,6,4,11900,'36,38,M,L,S'),
('Джинсы Imajeans',4,1,6,1842,'34,36,38,42'),
('Брюки OLBE', 5,7,5,2898,'44,46,48'),
('Джинсы Mango Jane2',1,1,4,200,'32,34,40'),
('Водолазка OPIMU',6,8,12,1527,'M,XL,L,S'),
('Косуха Mango', 1,9,4,9990,'M,L,S'),
('Джинсы Uptown2  (Mango)',1,1,7,3499,'34,36,38,40,42'),
('Жилет FinFlare',7,	4,3,6999,'M,L,XL,2XL'),
('Джинсы Mango Soho2', 1,1,0,1999,'34,36,38'),
('Джеггинсы Sasha Rozhdestvenskaya',8,10,5,1691,'42,46,48,50'),
('Плащ Mango SHERLOCK', 1,11,1,6499,'XS,S,M,L'),
('Юбка Katomi',9,5,8,3199,'34,40,42'),
('Джинсы Mango Noa2', 1,1,2,2499,'32,34,36,38,40,42,44'),
('Леггинсы Oodji',10,12,0,349,'M');
DROP TABLE if EXISTS categories2;
CREATE TABLE categories2(
id INTEGER,
`name` VARCHAR(50)
);
INSERT INTO categories2 (id,`name`)
VALUES 
(1,'Джинсы'),
(2,'Куртки'),
(3,'Платья'),
(4,'Жилетки'),
(5,'Юбки'),
(6,'Комплекты'),
(7,'Брюки'),
(8,'Водолазки'),
(9,'Косухи'),
(10,'Джеггинсы'),
(11,'Плащи'),
(12,'Леггинсы');
DROP TABLE if EXISTS brands;
CREATE TABLE brands(
id INTEGER,
`name` VARCHAR(50)
);
INSERT INTO brands (id,`name`)
VALUES 
(1,'Mango'),
(2,'Love Republic'),
(3,'Zarina'),
(4,'Imajeans'),
(5,'OLBE'),
(6,'OPIMU'),
(7,'FinFlare'),
(8,'Sasha Rozhdestvenskaya'),
(9,'Katomi'),
(10,'Oodji');
/*
В базе данных есть три таблицы: products, categories и brands.
Выведите id и название товара, название категории и название бренда для товаров, 
которые есть на складе.');
/*
В базе данных есть три таблицы: products, categories и brands.
Выведите id и название товара, название категории и название бренда для товаров, 
которые есть на складе.
Название товара выведите в поле name, категорию в category, бренда в brand.
Отсортируйте данные по цене, а затем по id товара.*/

SELECT p13.id,  p13.name, c2.name, br.name
FROM products13 AS p13, categories2 AS c2, brands AS br
WHERE p13.brand = br.id AND p13.category=c2.id AND p13.`count`>0
ORDER BY p13.price, p13.id;
/*В базе данных есть три таблицы: products, categories и brands.

Получите из таблицы products все джинсы и юбки компании Mango.
Выведите только id, название и цену. Данные отсортируйте по цене и id
(если товары имеют одинаковую цену). Не выводите товары, которых нет в наличии.
Сравните полученный SQL запрос с решением задачи Джинсы и юбки, часть 1.*/

SELECT p13.id,  p13.name, p13.price
FROM products13 AS p13, categories2 AS c2, brands AS br
WHERE p13.brand = br.id AND p13.category=c2.id AND p13.`count`>0 AND br.name = 'Mango'
ORDER BY p13.price, p13.id;


DROP TABLE if EXISTS products13;
CREATE TABLE products13(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(100),
brand INTEGER UNSIGNED ,
category INTEGER UNSIGNED,
`count` INTEGER UNSIGNED,
price INTEGER UNSIGNED,
sizes SET('32','34','36','38','40','42','44','46','48','50','52','54','56','M','L','S','X','XL','XS','2XL')
);
INSERT INTO products13(`name`,brand,category,`count`,price,sizes)
VALUES
('Джинсы Mango Lonny2',1,1,3,2990,'34,36,38,42'),
('Куртка Magno Nico2',1,2,2,4999,'S,M,L'),
('Платье Love Republic',2,3,7,3699,'40,46,48'),
('Джинсы Mango Kim2',1,1,3,2499,'34,36,38,40'),
('Жилет Zarina',3,4,7,2519,'42,46,50,52'),
('Юбка Mango Park',1,5,2,3999,'34,36,38,40'),
('Комплект Mango (джинсы Lonny 2 и косуха)',1,6,4,11900,'36,38,M,L,S'),
('Джинсы Imajeans',4,1,6,1842,'34,36,38,42'),
('Брюки OLBE', 5,7,5,2898,'44,46,48'),
('Джинсы Mango Jane2',1,1,4,200,'32,34,40'),
('Водолазка OPIMU',6,8,12,1527,'M,XL,L,S'),
('Косуха Mango', 1,9,4,9990,'M,L,S'),
('Джинсы Uptown2  (Mango)',1,1,7,3499,'34,36,38,40,42'),
('Жилет FinFlare',7,	4,3,6999,'M,L,XL,2XL'),
('Джинсы Mango Soho2', 1,1,0,1999,'34,36,38'),
('Джеггинсы Sasha Rozhdestvenskaya',8,10,5,1691,'42,46,48,50'),
('Плащ Mango SHERLOCK', 1,11,1,6499,'XS,S,M,L'),
('Юбка Katomi',9,5,8,3199,'34,40,42'),
('Джинсы Mango Noa2', 1,1,2,2499,'32,34,36,38,40,42,44'),
('Леггинсы Oodji',10,12,0,349,'M');
DROP TABLE if EXISTS categories2;
CREATE TABLE categories2(
id INTEGER,
`name` VARCHAR(50)
);
INSERT INTO categories2 (id,`name`)
VALUES 
(1,'Джинсы'),
(2,'Куртки'),
(3,'Платья'),
(4,'Жилетки'),
(5,'Юбки'),
(6,'Комплекты'),
(7,'Брюки'),
(8,'Водолазки'),
(9,'Косухи'),
(10,'Джеггинсы'),
(11,'Плащи'),
(12,'Леггинсы');
DROP TABLE if EXISTS brands;
CREATE TABLE brands(
id INTEGER,
`name` VARCHAR(50)
);
INSERT INTO categories2 (id,`name`)
VALUES 
(1,'Mango'),
(2,'Love Republic'),
(3,'Zarina'),
(4,'Imajeans'),
(5,'OLBE'),
(6,'OPIMU'),
(7,'FinFlare'),
(8,'Sasha Rozhdestvenskaya'),
(9,'Katomi'),
(10,'Oodji');

/*В таблице users содержатся данные сотрудников, а в deals сделки этих сотрудников. 
Таблицы связаны через внешний ключ user_id, который 
находится в deals и указывает на столбец id в таблице users.
Получите фамилии, имена и суммы сделок всех сотрудников. Вывод отсортируйте 
по сумме в обратном порядке, а сами значения введите в колонке total.*/

SELECT ds.user_id, u.last_name, u.first_name, SUM(amount) AS total FROM `deals1` AS ds,`users6` AS u
WHERE ds.user_id = u.id
GROUP BY ds.user_id, u.last_name, u.first_name
ORDER BY total DESC;
/*
В таблице products находятся товары, а в categories — категории,
к которым они относятся. Поле category_id является внешним ключом,
который указывает на первичный ключ категории.
Получите в одном запросе имя товара, цену товара и имя категории, 
к которой принадлежит товар.
Отсортируйте данные в алфавитном порядке по имени товара.
Имя категории выведите в колонке с именем category.*/

SELECT p.name, p.price, c.name as category FROM `products10` AS p,`categories` AS c
WHERE p.category_id = c.id
ORDER BY p.name;

/*В таблице products хранятся товары, а в categories — категории, к которым 
они относятся.
Поле category_id является внешним ключом, который указывает на первичный 
ключ категории.
Получите список категорий с количеством наименований товаров в каждой.
Данные отсортируйте в алфавитном порядке по имени категории.
Имя категории выведите в поле category, а количество наименований в products.
PS. На коммерческом языке – наименование товара называется SKU.*/

SELECT c.name as category, COUNT(`count`) AS `products` FROM `products10` AS p,`categories` AS c
WHERE p.category_id = c.id
GROUP BY c.name
ORDER BY c.name;


/*Таблицы orders и users связаны отношением многие к одному.
orders содержит внешний ключ user_id, который ссылается на id пользователя.
Получите из таблиц дату и стоимость каждого выполненного заказа, а также фамилию 
и имя пользователя, который этот заказ оформил.
Информацию отсортируйте по дате заказа, дату выведите в формате ДД.ММ.ГГГГ.*/


SELECT u.last_name,u.first_name, date_format(o.`date`,"%d.%m.%Y") AS date, o.amount FROM `order7` AS o,`users10` AS u
WHERE o.user_id = u.id
ORDER BY o.`date`;
/*
Таблицы orders и users связаны отношением многие к одному.
orders содержит внешний ключ user_id, который ссылается на id пользователя.

Получите все заказы, которые сделали женщины от 18 лет и старше в феврале 2015 года.
Выводить нужно только столбцы таблицы orders.

Данные отсортируйте по стоимости заказа.*/

SELECT o.id, o.user_id, o.date, o.amount, o.`status` FROM `order7` AS o,`users12` AS u
WHERE (o.user_id = u.id) AND (u.sex='w') AND (o.date BETWEEN '2015-01-01 00:00:00' AND '2015-04-30 23:59:59') AND (u.age>=18)
ORDER BY o.date;
/*
В таблице users хранятся данные по всем пользователям сайта поликлиники: клиентам и докторам.
 Доктора отмечены в поле is_doctor.
В таблице calendar содержатся данные о времени записи (visit_date) пациентов (client_id)
 к докторам (doctor_id). И doctor_id и client_id ссылаются на поле id в таблице users.
Составьте расписание для доктора Анастасии Дейчман (id равен 9) на 17 апреля 2017 года.
Выведите фамилию пациента, имя пациента и время приема в формате ЧЧ:ММ.
Время приема выведите в колонке visit_time.
Данные должны быть отсортированы в хронологическом порядке.*/

SELECT us.first_name, us.last_name, date_format(time(cl.visit_date), "%h:%i") AS visit_time
FROM `calendar3` AS cl,`users21` AS us
WHERE cl.client_id = us.id
AND  cl.doctor_id = 9 AND DATE(cl.visit_date)='2017-04-17';
/*
В таблице users хранится информация о сотрудниках компании, а в arrival 
содержатся данные о дате (a_date) и времени (a_time) прихода сотрудников на работу.
Сотрудники, которые пришли на работу после 9 часов утра, считаются опоздавшими. 
Выведите id, фамилию и имя сотрудников, которые опоздали хотя бы раз в марте 2017 года.*/
SELECT id, first_name, last_name FROM 
(SELECT us.id, us.first_name, us.last_name 
FROM `arrival1` AS ar,`users18` AS us
WHERE ar.user_id = us.id and
(ar.a_date BETWEEN '2017-03-01 'AND '2017-03-31') AND ar.a_time > '09:00:00') table_new
GROUP BY id, first_name, last_name
;


