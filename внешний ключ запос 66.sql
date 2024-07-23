/*В базе данных есть две таблицы: products и categories. В первой находится 
список товаров, а во второй — категории. Сейчас таблицы связаны между собой 
через поле category_id, однако это поле не является настоящим внешним ключом.
Сделайте category_id внешним ключом на поле id в таблице categories.
Исходные запросы для создания таблиц были такие:

CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL,
    category_id INTEGER UNSIGNED NOT NULL
);
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
Учтите, что обе таблицы уже заполнены данными.*/

CREATE TABLE products14 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL,
    category_id INTEGER UNSIGNED NOT NULL
);
CREATE TABLE categories3 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);

ALTER TABLE products14
ADD FOREIGN KEY (category_id)
REFERENCES categories3(id);