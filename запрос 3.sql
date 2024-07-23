DROP TABLE if EXISTS users;
CREATE TABLE users(
id INT UNSIGNED,
first_name VARCHAR (50),
last_name VARCHAR (60),
bio TEXT ,
);

INSERT INTO users(id, firstname, last_name, bio)
VALUES
(1,'Антон', 'Кулик','С отличием закончил 39лицей.'),
(2,'Сергей', 'Давыдов',''),
(3,'Дмитрий', 'Соколов','Профессиональный программист');