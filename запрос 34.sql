/*Удалите из таблицы products индексы, которые по вашему мнению установлены неправильно. 
Таблица создана с помощью следующего SQL запроса:

CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INT UNSIGNED NULL DEFAULT NULL, 
    name VARCHAR(100) NOT NULL,
    count TINYINT UNSIGNED NOT NULL DEFAULT 0, 
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    UNIQUE INDEX category_id (category_id),
    INDEX count (count),
    INDEX main_search (category_id, price)
);*/




DROP TABLE if EXISTS products7;
CREATE TABLE products7 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INT UNSIGNED NULL DEFAULT NULL, 
    name VARCHAR(100) NOT NULL,
    count TINYINT UNSIGNED NOT NULL DEFAULT 0, 
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    UNIQUE INDEX category_id (category_id),
    INDEX count (count),
    key main_search (category_id, price)
);