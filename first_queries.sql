DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NULL,
    count INTEGER NULL,
    price INTEGER NULL,
    city VARCHAR(255) NULL,
    tipe CHAR(255) NULL,
    total INTEGER NULL
    );
INSERT INTO products (id, name, count, price, city, tipe, total)
VALUES
    (1, 'Стиральная машина', 5, 10000, 'Kazan',"new",50000),
    (2, 'Холодильник', 5, 10000, 'Moskow',"new",50000),
    (3, 'Микроволновка', 3, 4000, 'Piter',"new",12000),
    (4, 'Пылесос', 2, 4500, 'Riga',"new",9000),
    (5, 'Вентилятор', 5, 700, 'Kiev',"new",0),
    (6, 'Телевизор', 7, 31740, 'Kaluga',"new", null);
    