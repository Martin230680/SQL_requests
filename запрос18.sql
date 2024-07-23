/*Создайте таблицу users с со следующими полями:
id — идентификатор, целое положительное, первичный ключ без автоинкремента, NULL запрещен.
first_name — имя пользователя, строка до 50 символов.
last_name — фамилия пользователя, строка до 50 символов.
birthday — дата рождения. Пользователь может не указать день рождения и тогда в поле нужно хранить NULL.
Добавьте 3 записи так, чтобы получалась таблица ниже:
Создайте таблицу users с со следующими полями:
id	first_name	last_name	birthday
1	Дмитрий	Иванов	NULL
2	Анатолий	Белый	NULL
3	Денис	Давыдов	1995-09-08

*/

DROP TABLE If EXISTS users4;
CREATE TABLE users4(
id INT UNSIGNED NOT NULL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
birthday DATE DEFAULT NULL
);

INSERT INTO users4(id, first_name, last_name)
VALUES (1, "Дмитрий", "Иванов");

INSERT INTO users4(id, first_name, last_name)
VALUES (2, "Анатолий", "Белый");

INSERT INTO users4(id, first_name, last_name,birthday)
VALUES (3, "Денис", "Давыдов","1995-09-08");