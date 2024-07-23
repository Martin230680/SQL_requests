/*CREATE TABLE products16(
id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),	
`count` INTEGER UNSIGNED,
price	FLOAT,
category_id INTEGER UNSIGNED
);
INSERT INTO products16 (`name`,`count`,price,category_id)
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
/*
CREATE TABLE categories5(
id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR(50)
);
*/

/*
INSERT INTO categories5(`name`)
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
/* дописали тк согласно условиям задачи внешний ключ с условием удаления restrict
ALTER TABLE products16
ADD FOREIGN KEY(category_id)
REFERENCES categories5(id)
ON DELETE RESTRICT;
*/

/*находим в описании таблицы products16 название внешнего ключа, прежде чем его изменить с условием
удаления данных по каскаду, нужно удалить старый ключ и напим=сать новый.*/
/*
ALTER TABLE products16
DROP FOREIGN KEY products16_ibfk_1;
*/
/*
ALTER TABLE products16
ADD FOREIGN KEY(category_id)
REFERENCES categories5(id)
ON DELETE cascade;
*/

DELETE FROM categories5
WHERE id=2 OR id=17;