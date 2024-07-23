/*Создайте таблицу clients со следующими полями:
id — автоинкрементальный первичный ключ.
first_name — имя, строка до 50 символов. NULL запрещен.
last_name — фамилия, строка до 50 символов. NULL запрещен.
email — электронный адрес, строка до 100 символов. NULL запрещен, все значения уникальные.
passport — серия и номер паспорта, строка до 10 символов. NULL запрещен, все значения уникальные.
Все уникальные ключи должны иметь те же имена, что и поля, для которых они создаются.*/

DROP TABLE if EXISTS clients;
CREATE TABLE clients(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT null,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
passport VARCHAR(11) NOT NULL,
UNIQUE KEY passport(passport),
UNIQUE KEY email(email)
);
INSERT INTO clients(first_name, last_name, email, passport)
VALUES ('Mavletov','Marat','mavletov@inbox.ru','9203 375706'),
('Mavletov','Marat','mavletov@yandex.ru','9203 375705');