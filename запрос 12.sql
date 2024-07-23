/*Создайте таблицу products со следующими полями:

id — номер товара, целое положительное, не может принимать NULL.
name — название товара до 120 символов, не может принимать NULL.
category_id — категория товара, целое положительное, может принимать NULL.
price — цена, денежный тип из 10 знаков, из них два после запятой. Не может принимать NULL.
Добавьте 4 записи так, чтобы получалась таблица ниже:
1	Подгузники (12 шт)	3	700.00
2	Подгузники (24 шт)	3	1250.00
3	Спиннер	NULL	250.40
4	Пюре слива	4	47.50


*/

DROP TABLE if EXISTS products1;
CREATE TABLE products1(
id INT UNSIGNED NOT NULL,
`name` VARCHAR (120) NOT NULL,
category_id INT UNSIGNED NULL,
price DECIMAL (10, 2) NOT NULL
);

INSERT INTO products1(id, `name`, category_id, price)
VALUES
(1,'Подгузники (12шт)',3,700.00),
(2,'Подгузники (24шт)',3,1250.00),
(3,'Спиннер',NULL,250.40),
(4,'Пюре слива',4,47.50);
