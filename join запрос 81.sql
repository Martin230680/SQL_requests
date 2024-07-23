/*create table roles1
(id INT,
`name` VARCHAR(50)
);*/
/*
INSERT INTO roles1 (id,`name`)
VALUES
(1,'Менеджер'),
(2,'Дизайнер'),
(3,'Программист'),
(4,'Маркетолог'),
(5,'Бухгалтер');
*/
/*
CREATE TABLE departments
(id INT,
`name` VARCHAR(50)
);
*/
/*
INSERT INTO departments(id,`name`)
VALUES
(1,'Руководство'),
(2,'Маркетинг'),
(3,'Разработчики'),
(4,'Бухгалтерия'),
(5,'Дизайнеры'),
(6,'Продажи');
*/
/*
CREATE TABLE users24(
id	INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
role_id INT,	
department_id INT
);
*/
/*
INSERT INTO users24(id, first_name, last_name, role_id, department_id)
values
(1,'Виктор','Алтушев',1,1),
(2,'Светлана','Иванова',2,5),
(3,'Елена','Абрамова',3,3),
(4,'Василиса','Кац',	4,2),
(5,'Антон','Сорокин',NULL,NULL),
(6,'Алёна','Алясева',5,NULL),
(7,'Лиана','Белая',3,3),
(8,'Карина','Белая',3,3),
(9,'Анастасия','Дейчман',NULL,6),
(10,'Юлия','Фёдорова',1,3);
*/
/*
Получите список всех пользователей (users) с указанием их ролей (roles) и отделов (departments).
Выведите 4 поля: last_name, first_name, role (название роли) и department (название отдела).
Данные отсортируйте сперва по фамилии, а затем по имени.*/

SELECT 
u.last_name, u.first_name, r.`name` AS `role`, d. AS department
FROM users24 AS u
left outer JOIN departments AS d ON d.id = u.department_id
LEFT OUTER JOIN roles1 AS r ON r.id=u.role_id
ORDER BY u.last_name,u.first_name;
