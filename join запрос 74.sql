/*CREATE TABLE roles(
id INT,
`name` VARCHAR(50)
);
/*
/*DROP TABLE if EXISTS roles;
DROP TABLE if EXISTS employees;*/
/*INSERT INTO roles (id,`name`)
VALUES 
(1	,'Менеджер'),
(2,'	Дизайнер'),
(3	,'Программист'),
(4	,'Маркетолог');*/
/*
CREATE TABLE employees(
id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
`active` BOOL,
sex VARCHAR(3), 
role_id int
);

INSERT INTO employees	(id,first_name	,last_name,	`active`,	sex,	role_id)
VALUES
(1,'Дмитрий	','Федьков',	TRUE	,'m'	,1),
(2,'	Светлана','	Иванова',	TRUE,	'w',	2),
(3,'	Никита','	Трутнев',	TRUE,	'm',	3),
(4,'	Денис','	Кац',	TRUE	,'m'	,3),
(5,'	Алена	','Сорокина',	TRUE,	'w',	NULL),
(6,'	Василий','	Федьков',	FALSE,'	m',	1),
(7,'	Ярослав','	Сорокин',	TRUE,	'm',	2),
(8,'	Денис','	Белый	',TRUE,	'm',	2),
(9,'	Анатолий','	Дейчман',	TRUE,	'm',	3),
(10,'	Юлия','	Фёдорова',	FALSE,	'w',	NULL);
*/
/*
В таблице roles хранится список ролей (должностей) в компании, 
а в employees — сотрудники с указанием их роли через поле role_id. 
Некоторые сотрудники не имеют ролей.
Получите список всех активных сотрудников с указанием их должностей.
Если у сотрудника нет должности, то нужно вывести NULL.
Выведите 3 столбца: имя, фамилию и должность (role).
Данные отсортируйте по фамилии, а после по имени в алфавитном порядке.*/

SELECT e.last_name, e.first_name, r.`name` AS `role` FROM roles AS r
RIGHT outer JOIN employees AS e 
ON r.id=e.role_id
WHERE e.active IS TRUE
ORDER BY e.last_name, e.first_name;
