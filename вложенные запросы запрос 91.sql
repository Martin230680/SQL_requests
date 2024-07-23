/*CREATE TABLE products21(
id INTEGER unsigned auto_increment PRIMARY KEY,
`NAME` VARCHAR(50),	
`COUNT` INTEGER UNSIGNED,	
price	INTEGER UNSIGNED,
category_id INTEGER UNSIGNED
);
INSERT INTO products21(NAME,	COUNT	,price,	category_id)
values
('Сникерс большой',	3,	56	,1),
('Сливочное масло Милка',	2	,104,	2),
('Яблоки ред',	7	,98,	3),
('Яблоки голден',	3,	89,	3),
('Марс',	7	,36,	1),
('Сметана 20',	2,	46,	2),
('Сметана 15',	4,	45	,2),
('Сметана 20 фермерская',	1,	79,	2),
('Апельсины',	5,	70,	3),
('Макароны 1 кг',	4,	56,	4),
('Вода 1 л',	12,	18,	5),
('Гречка 0,5 кг',	4,	48,	4),
('Лук	',7,	6,	9),
('Творог 9',	3,	56	,2),
('Шампунь H&S',	0	,238,	7),
('Баунти	',0	,38,	1),
('Батон купеческий',	5,	35,	8),
('Говядина',	1	,308,	17),
('Помидоры',	8,	46,	9),
('Кабачки',	2	,89,	9),
('Огурцы	',7,	38	,9),
('Баклажаны	',6,	93,	9),
('Кружки 6 шт',	0,	230,	6);
*/

/*
CREATE TABLE old_prices(
product_id integer UNSIGNED,
price INTEGER UNSIGNED,
FOREIGN KEY (product_id)
REFERENCES products21(id)
ON DELETE SET NULL
ON UPDATE cascade
);
*/

/*
INSERT INTO old_prices(product_id,	price)
VALUES
(1,56),
(2,104),
(3,98),
(4,89),
(5,35),
(6,49),
(7,48),
(8,79),
(9,70),
(10,50),
(11,18),
(13,6),
(14,56),
(15,238),
(16,42),
(17,35),
(19,46),
(20,89),
(21,36),
(22,93),
(23,230);
*/
/*
В таблице products хранятся товары с текущими ценами, а в old_prices — старые цены на эти же 
товары. Если товар добавили недавно, то в old_prices данных о нем нет.
Получите из таблицы products id, название и текущую стоимость товаров, цены которых 
были изменены. Данные отсортируйте по id.*/

SELECT p21.id, p21.name, p21.price FROM products21 AS p21
JOIN old_prices AS op ON op.product_id = p21.id
WHERE p21.price <> op.price
ORDER BY p21.id;