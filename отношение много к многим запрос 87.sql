/*CREATE TABLE roles2(
id INTEGER UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50)
);
INSERT INTO roles2(`name`)
VALUES
('Менеджер'),
('Дизайнер'),
('Программист'),
('Маркетолог'),
('Бухгалтер');*/
/*
CREATE TABLE users25(
id INTEGER UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50)
);
*/
/*INSERT INTO users25 (first_name,last_name)
VALUES
('Виктор','Алтушев'),
('Светлана','Иванова'),
('Елена','Абрамова'),
('Василиса','Кац'),
('Антон','Сорокин'),
('Алёна','Алясева'),
('Антон','Белый'),
('Игорь','Маф'),
('Анастасия','Дейчман'),
('Александр','Дмитриев');*/
/*
CREATE TABLE users_roles(
user_id INTEGER UNSIGNED,
role_id INTEGER UNSIGNED,
UNIQUE INDEX user_project (user_id,role_id),
FOREIGN KEY(user_id) REFERENCES users25(id),
FOREIGN KEY(role_id) REFERENCES roles2(id)
);

INSERT INTO users_roles (user_id	,role_id)
VALUES
(1,2),
(2,1),
(3,2),
(4,5),
(5,3),
(6,4),
(7,3),
(8,3),
(1,1),
(3,4),
(5,1);
*/
/*
Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
Получите всех программистов компании.
Выведите id пользователя, его имя и фамилию. Данные отсортируйте по фамилии.*/

SELECT u.last_name, u.first_name FROM users25 AS u
JOIN users_roles AS ur ON ur.user_id = u.id
JOIN roles2 AS r2 ON r2.id = ur.role_id
WHERE r2.id =3
ORDER BY u.last_name;

/*Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
Получите список всех ролей и количество сотрудников в каждой роли.
Выведите два поля: role — название должности и members — количество сотрудников 
в этой должности. Данные отсортируйте по названию должности.
*/

SELECT r2.`name` AS `role`, COUNT(*) FROM users25 AS u
JOIN users_roles AS ur ON ur.user_id = u.id
JOIN roles2 AS r2 ON r2.id = ur.role_id
GROUP BY r2.`name`
ORDER BY r2.`name`;

/*Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
Получите список всех сотрудников, которые выполняют более одной роли.
Выведите id, имена и фамилии таких сотрудников. Данные отсортируйте по id.*/

SELECT u.id, u.last_name, u.first_name FROM users25 AS u
JOIN users_roles AS ur ON ur.user_id = u.id
JOIN roles2 AS r2 ON r2.id = ur.role_id
GROUP BY  u.id, u.last_name, u.first_name
HAVING COUNT(ur.user_id)>1
ORDER BY u.id;

/*Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
Получите список всех сотрудников, которые не выполняют ни одной роли.
Выведите id, имена и фамилии таких сотрудников. Данные отсортируйте по id.*/

SELECT u.id, u.last_name, u.first_name FROM users25 AS u
left outer JOIN users_roles AS ur ON ur.user_id = u.id
left outer join roles2 AS r2 ON r2.id = ur.role_id
WHERE ur.role_id IS NULL
ORDER BY u.id;

/*
Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
В компании произошли небольшие изменения и вам необходимо внести соответствующие правки
в таблицы:
1. Уберите Светлану Иванову из менеджеров.
2. Сделайте менеджером Анастасию Дейчман.
3. Назначьте Александра Дмитриева программистом.
*/
/*
DELETE FROM users_roles
WHERE user_id=2 AND role_id=1;
*/

/*INSERT INTO users_roles(user_id,role_id)
VALUES
(10,1);*/

/*UPDATE users_roles
SET user_id = 9
WHERE user_id=10 AND role_id=1;*/

INSERT INTO users_roles(user_id,role_id)
VALUES
(10,3);
SELECT * FROM users_roles;
