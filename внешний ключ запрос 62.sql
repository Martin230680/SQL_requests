/*В базе данных интернет-магазина по продаже красок есть таблица products, которая 
была создана с помощью следующего запроса:

CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
Создайте таблицу products_details, которая будет содержать дополнительные текстовые 
данные о краске и связана с таблицей products отношением один-к-одному.
В таблице должно быть три поля: id, product_id и description.
Поле product_id должно быть внешним ключом, который ссылается на поле id в таблице products.
Поле description должно быть типа TEXT.*/
DROP TABLE if EXISTS products12;
CREATE TABLE products12 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
DROP TABLE if EXISTS products_details12;
CREATE TABLE products_details12(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
product_id  int UNSIGNED NOT NULL,
`description` TEXT,
FOREIGN KEY(product_id) REFERENCES products12(id) 
ON DELETE CASCADE
ON update CASCADE
);

