/*CREATE TABLE categories8(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY key,
`name` VARCHAR(50)
); 
INSERT INTO categories8(`name`)
VALUES
('Джинсы'),
('Куртки'),
('Платья'),
('Жилетки'),
('Юбки'),
('Комплекты'),
('Брюки'),
('Водолазки'),
('Косухи'),
('Джеггинсы'),
('Плащи'),
('Леггинсы');*/

/*
CREATE TABLE products20(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY key,
`name` VARCHAR(50),
category	INTEGER UNSIGNED,
`count` INTEGER UNSIGNED,
price INTEGER UNSIGNED,
FOREIGN KEY (category)
REFERENCES categories8(id)
ON DELETE SET NULL
ON UPDATE CASCADE
);


INSERT INTO products20 (`name`,category,`count`,price)
VALUES
('Джинсы Mango Lonny 2',1,3,2990),
('Куртка Magno Nico 2',2,2,4999),
('Платье Love Republic',3,7,3999),
('Джинсы Mango Kim2',1,3,2499),
('Жилет Zarina',4,7,2519),
('Юбка Mango Park',5,0,3999),
('Джинсы Imajeans',1,6,1842),
('Брюки OLBE',7,5,2898),
('Джинсы Mango Jane2',1,4,200),
('Водолазка OPIMU',8,12,1527),
('Косуха Mango',9,4,9990),
('Джинсы Uptown2 (Mango)',1,7,3499),
('Жилет FinFlare',4,3,6999),
('Джинсы Mango Soho2',1,0,1999),
('Джеггинсы Sasha Rozhdestvenskaya',10,5,1691),
('Плащ Mango SHERLOCK',11,1,6499),
('Юбка Katomi',5,0,3199),
('Джинсы Mango Noa2',1,2,2499),
('Леггинсы Oodji',12,0,349);
*/
/*
Выведите id и названия категорий, в которых в наличии есть товары.
Данные отсортируйте по имени категории.
Используйте вложенные запросы.*/

SELECT * FROM categories8 WHERE id IN(
SELECT category FROM products20 WHERE `count`in
(SELECT `count` FROM products20
WHERE `count`>0));

/*
Получите из таблицы products джинсы, стоимость которых больше средней цены за джинсы.
Выведите id, название и цену.
Данные отсортируйте по цене, а затем по id

*/
SELECT NAME, price FROM products20
WHERE price >(
SELECT avg(price) FROM products20
WHERE category =(
SELECT id FROM categories8
WHERE `name`='джинсы')) AND category = (SELECT id FROM categories8
WHERE `name`='джинсы');



