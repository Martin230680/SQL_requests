/*Создайте таблицу products для хранения товаров в интернет магазине:
id — первичный ключ.
category_id — категория, целое положительное. Может принимать NULL. По умолчанию NULL.
name — название, строка до 100 символов. NULL запрещен.
count — количество, целое положительное до 255. NULL запрещен, по умолчанию 0.
price — цена типа DECIMAL с 10 знаками, 2 из которых выделены для копеек. NULL запрещен, по умолчанию 0.00. Разрешены только положительные числа.
Добавьте в таблицу два простых индекса так, чтобы ускорить поиск по категории и по цене.
Названия индексов должны быть такими же, как и названия полей, по которым эти индексы строятся.*/

DROP TABLE if exists products6;
CREATE TABLE products6(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_id INT UNSIGNED DEFAULT NULL,
`name` VARCHAR(100) NOT NULL,
`count` INT(3) UNSIGNED NOT NULL DEFAULT 0,
price DECIMAL (8,2) unsigned NOT NULL DEFAULT 0.00,
INDEX categiry_idindex (category_id),
INDEX price_index(price)
);

/*заполняем по дефолту*/

INSERT INTO products6(`name`)
VALUES ('Стиральная машина'),
 ('Телевизор'),
  ('Магнитофон'),
   ('Микроволновка'),
    ('Хоодильник');
    
INSERT INTO products6(`name`, category_id, `count`, price)
VALUES ('Nasos',5,100,300.596),
('Nog',5,140,30.566),
('Vaza',4,200,50.566);