/*CREATE TABLE categories6(
id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR(50)

);

INSERT INTO categories6(`name`)
VALUES
('Шоколад'),
('Молочные продукты'),
('Фрукты и овощи'),
('Крупы'),
('Напитки'),
('Посуда'),
('Шампуни'),
('Хлеб'),
('Консервы'),
('Чай и кофе'),
('Алкоголь'),
('Колбасы'),
('Полуфабрикаты'),
('Растительное масло'),
('Рыба'),
('Товары гигиены'),
('Мясо');
*/
/*
CREATE TABLE products18(
id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),	
`count` INTEGER UNSIGNED,
price	FLOAT,
category_id INTEGER UNSIGNED,
FOREIGN KEY (category_id)
REFERENCES categories6(id)
ON DELETE SET null
);
INSERT INTO products18 (`name`,`count`,price,category_id)
VALUES 
('Сникерс большой',	3,	56	,1),
('Сливочное масло Милка',	2,	104.4,	2),
('Яблоки ред',	7	,98,	3),
('Яблоки голден',	3,	89	,3),
('Марс',	7,	36.5,	1),
('Сметана 20',	2,	49	,2),
('Сметана 15',	4,	45,	2),
('Сметана 20 фермерская',	1	,78.9,	2),
('Апельсины',	5,	70,	3),
('Макароны 1 кг',	4,	56,	4),
('Вода 1 л',	12,	18,	5),
('Гречка 0,5 кг',	4	,45,	4),
('Хлеб белый',	7,	23.4,	8),
('Творог 9',	3,	56	,2),
('Шампунь H&S',	0,	238,	7),
('Баунти',	0,	38.9,	1),
('Батон купеческий',	5	,34.5,	8),
('Говядина',	1,	308,	17),
('Помидоры',	8,	46	,3),
('Индейка',	2,	534,	17),
('Свинина',	0	,349,	17),
('Тарелки 12 шт',	0,	780,	6),
('Кружки 6 шт',	0,	230,	6);

*/

DELETE FROM categories6
WHERE id=2 OR id=17;

