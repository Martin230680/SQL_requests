DROP TABLE if EXISTS books;
CREATE TABLE books(
id INT UNSIGNED,
`name` VARCHAR (100),
`description` VARCHAR (1000),
isbn BIGINT(13)
);

INSERT INTO books(id, `name`, `description`, isbn)
VALUES
(1,'MySQL 5', 'Хорошая книга.',5941579284),
(2,'Изучаем SQL', 'Полезная книга.',5932860510),
(3,'Изучаем Python. 4-е издание', '	Подробная книга о Python.',9785932861592);