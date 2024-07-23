/*create table orders7(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id	INTEGER UNSIGNED,
`date` DATETIME,	
amount INTEGER UNSIGNED,
`status` ENUM ('completed','new','cancelled')
);*/
/*DROP TABLE if EXISTS orders7;*/
/*
INSERT INTO orders7 (user_id,`date`,amount,`status`)
VALUES
(3,'2014-01-23 17:04:04',4500,'completed'),
(1,'2014-03-12 12:12:43',700,'completed'),
(10,'2014-12-31 08:53:25',1240,'new'),
(7,'2015-01-04 18:23:09',500,'completed'),
(1,'2015-01-04 18:25:27',8700,'cancelled'),
(4,'2015-01-12 09:23:14',1350,'completed'),
(10,'2015-01-04 17:16:39',600,'new'),
(1,'2015-02-01 13:32:17',680,'completed'),
(3,'2014-02-16 14:44:05',1400,'completed'),
(5,'2015-02-28 02:00:47',4300,'cancelled'),
(10,'2015-03-12 08:30:23',8000,'completed'),
(2,'2015-04-01 13:04:47',980,'completed'),
(2,'2015-04-14 23:21:25',1600,'completed'),
(3,'2015-04-15 04:17:11',8000,'completed'),
(7,'2015-04-16 08:21:37',8000,'new');
*/
/*
CREATE TABLE users26(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name	VARCHAR(50),
last_name VARCHAR(50),
age iNTEGER UNSIGNED
);
INSERT INTO users26(first_name,	last_name,	age)
VALUES
('Вероника','Петрова',20),
('Светлана','Иванова',17),
('Елена','Абрамова',18),
('Василиса','Кац',15),
('Алёна','Сорокина',22),
('Алёна','Федькова',28),
('Лиана','Сорокина',21),
('Карина','Белая',30),
('Анастасия','Дейчман',16),
('Юлия','Фёдорова',25);
*/
/*
ALTER TABLE orders7
ADD FOREIGN KEY(user_id)
REFERENCES users26(id)
ON DELETE SET NULL
ON UPDATE CASCADE;*/
/*
В таблице orders хранятся заказы покупателей, а в users непосредственно сами покупатели.
Получите информацию о покупателях, которые сделали самый дорогой заказ.
Заказов с максимальной стоимостью может быть несколько, а значит и покупателей может быть несколько.
Учитывайте только завершенные заказы.
Данные отсортируйте по id покупателей.*/
SELECT first_name, last_name FROM users26 WHERE id IN(
SELECT user_id FROM `orders7` WHERE amount IN(
SELECT MAX(amount) FROM orders7
WHERE STATUS = 'completed'))
ORDER BY id;

/*В таблице products хранятся товары, а в categories — категории, к которым они относятся.
Поле category_id является внешним ключом, который указывает на первичный ключ категории.
Получите список овощей и фруктов, цена которых больше чем ЛЮБАЯ из цен шампуней.
Выведите название и цену продукта, данные отсортируйте по названию.*/

SELECT `name` FROM products18 WHERE price > ALL(
SELECT MAX(price) FROM products18 WHERE `name`IN (
SELECT `name` FROM products18 WHERE category_id =(
SELECT id FROM categories6 WHERE `name`='Фрукты и овощи'))) 
AND category_id = (SELECT id FROM categories6 WHERE `name`='Шампуни')
ORDER BY `name`;

/*
Магазину нужно заказать только те фрукты, количество которых меньше самого 
маленького количества хлеба. Получите список фруктов и овощей, которые необходимо заказать.
Выведите название и количества продукта, данные отсортируйте по названию.
*/
SELECT `name` FROM products18 WHERE `count`<
(SELECT MIN(`count`) FROM products18 WHERE `name` IN
(SELECT `name` FROM products18 WHERE category_id=
(SELECT id FROM categories6 WHERE `name`='хлеб')))
AND category_id = (SELECT id FROM categories6 WHERE `name`='фрукты и овощи');



