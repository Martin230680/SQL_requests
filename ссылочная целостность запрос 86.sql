/*CREATE TABLE categories7(
id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR(50)

);

INSERT INTO categories7(`name`)
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


CREATE TABLE products19(
id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),	
`count` INTEGER UNSIGNED,
price	FLOAT,
category_id INTEGER UNSIGNED,
FOREIGN KEY (category_id)
REFERENCES categories7(id)
ON DELETE SET null
);
INSERT INTO products19 (`name`,`count`,price,category_id)
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
Перенесите товары из категории «Фрукты и овощи» в категории «Фрукты» и «Овощи» 
а затем удалите «Фрукты и овощи»
Также удалите категории «Молочные продукты» вместе с товарами.*/

/*При наличии внешнего ключа таблица не даст вносить именения, сначала удаляем ключ и 
вносим правки

ALTER TABLE products19
DROP FOREIGN KEY products19_ibfk_1;
/*
UPDATE products19
SET category_id = 18
WHERE id IN (3,4,9);
UPDATE products19
SET category_id = 19
WHERE id IN (19);*/
/*
ALTER TABLE products19
ADD FOREIGN KEY(category_id)
REFERENCES categories7(id)
ON DELETE CASCADE;

*/
/*
DELETE FROM categories7
WHERE id=3;*/

DELETE FROM categories7
WHERE id=2;

