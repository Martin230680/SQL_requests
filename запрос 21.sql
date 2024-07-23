/*Выберите из таблицы products все товары от 5000 рублей и дороже в порядке убывания значений первичного ключа.
id	name	count	price
1	Стиральная машина	5	10000
2	Холодильник	0	20000
3	Микроволновка	3	4000
4	Пылесос	2	5000
5	Вентилятор	0	700
6	Телевизор	7	31740
7	Тостер	2	2500
8	Принтер	4	3000
*/
DROP TABLE if exists products3;
CREATE TABLE products3(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY key,
`name` VARCHAR(50) NOT NULL,
`count` INT unsigned NOT NULL,
price INT UNSIGNED NOT NULL 
);

INSERT INTO products3(`name`,`count`,price)
VALUE 
('Стиральная машина',5,10000),
('Холодильник',0,10000),
('Микроволновка',3,4000),
('Пылесос',2,5000),
('Вентилятор',0,700),
('Телевизор',7,10000),
('Тостер',2,2500),
('Принтер',4,3000);

SELECT * FROM products3 
WHERE price >=5000 
ORDER BY price, id DESC;

