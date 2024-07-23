/*Создайте таблицу products для хранения данных о товарах в магазине:
id — автоинкрементальный первичный ключ.
category_id — идентификатор категории, беззнаковый INT, по умолчанию NULL.
name — название товара, строка до 100 символов, NULL запрещен.
slug — идентификатор товара для генерации URL, строка до 50 символов, NULL запрещен.
ean13 — штрих-код из 13 символов. Только уникальные значения. NULL запрещен.
В рамках всего сайта slug могут повторяться, но для каждой конкретной категории значения slug уникальны. 
Создайте подходящий под это условие ключ с именем category_slug.
*/
DROP TABLE if exists products5;
CREATE TABLE products5(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
category_id INT UNSIGNED NULL,
`name` VARCHAR(100) NOT NULL,
slug VARCHAR(50) NOT NULL,
ean13 VARCHAR(13) NOT NULL,
UNIQUE KEY category_slug(category_id,slug)
);

INSERT INTO products5(category_id,`name`,slug,ean13)
VALUES
(5,'tv','123456','1234567890123');
INSERT INTO products5(category_id,`name`,slug,ean13)
VALUES
(6,'hot','123456','1234567890123');
INSERT INTO products5(category_id,`name`,slug,ean13)
VALUES
(6,'hot','123457','1234567890123');

