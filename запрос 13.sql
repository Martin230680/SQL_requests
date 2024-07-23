/*Выберите из таблицы products название, количество и цены всех товаров, у которых нет категории.
Данные отсортируйте по цене.

products
id	category_id	name	count	price
1	7	Стиральная машина	5	10000
2	12	Холодильник	0	10000
3	12	Микроволновка	3	4000
4	8	Пылесос	2	4500
5	NULL	Вентилятор	0	700
6	9	Телевизор	7	31740
7	12	Тостер	2	2500
8	NULL	Принтер	4	3000
9	NULL	Активные колонки	1	2900*/

DROP TABLE if EXISTS products2;
CREATE TABLE products2 (
	`id` INT(10) UNSIGNED NOT NULL,
	`category_id` INT(10) UNSIGNED NULL,
	`name` VARCHAR(255) NOT NULL,
	`count` INT(10)  UNSIGNED NOT NULL,
	`price` INT(10)  UNSIGNED NOT NULL
	);
	
INSERT INTO products2(id,category_id,`name`,`count`,price)
VALUES 
(1,7,'Стиральная машина',5,10000),
(2,12,'Холодильник',0,10000),
(3,12,'Микроволновка',3,4000),
(4,8,'Пылесос',2,4500),
(5,NULL,'Вентилятор',0,700),
(6,9,'Телевизор',7,31740),
(7,12,'Тостер',2,2500),
(8,NULL,'Принтер',4,3000),
(9,NULL,'Активные колонки',1,	2900);

SELECT * FROM products2
WHERE category_id IS NULL 
ORDER BY price;

