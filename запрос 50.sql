DROP TABLE IF EXISTS users10;
CREATE TABLE users10 (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR (50) NOT NULL DEFAULT '',
age INT(3) UNSIGNED NOT NULL
);
INSERT INTO users10(`name`,age)
VALUES
('Вероника Петрова',20),
('Светлана Иванова',17),
('Елена Абрамова',18),
('Василиса Кац',15),
('Алёна Сорокина',22),
('Алёна Федькова',28),
('Лиана Сорокина',21),
('Карина Белая',30),
('Анастасия Дейчман',16),
('Юлия Фёдорова',25),
('Татьяна Сухова',20);
/*
В таблице users в поле name хранятся имя и фамилия пользователя разделенные пробелами.
1. Создайте в таблице два дополнительных поля: first_name и last_name длиной 50 символов.
Оба поля по умолчанию должны содержать пустую строку.
2. Заполните first_name именами пользователя, а last_name — фамилиями.
Используйте данные из общего поля name.
3. В конце удалите поле name.*/

ALTER TABLE users10
add COLUMN first_name VARCHAR(50) DEFAULT '',
ADD COLUMN last_name VARCHAR(50) DEFAULT '';
UPDATE users10 SET first_name= SUBSTRING_INDEX (`name`,' ',1);
UPDATE users10 SET last_name= SUBSTRING_INDEX (`name`,' ',-1);
ALTER TABLE users10 DROP COLUMN `name`;
SELECT * FROM users10;
