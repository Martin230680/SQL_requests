/*CREATE table people1(
id	INTEGER UNSIGNED auto_increment PRIMARY KEY,
first_name	VARCHAR(50),
last_name	VARCHAR(50),
age INTEGER UNSIGNED,
sex VARCHAR(3)
);

INSERT INTO people1 (first_name,	last_name,	age,	sex)
VALUES 
('Дмитрий','Федьков',18	,'m'),
('Светлана','Иванова	',30,'w'),
('Никита','Трутнев',17,'m'),
('Денис','Кац',22	,'m'),
('Сорокина','Алена',16,'w'),
('Василий','Федьков',44,'m'),
('Ярослава','Сорокина',17,'m'),
('Денис','Белый',23,'m'),
('Анатолий','Дейчман',21,'m'),
('Юлиана','Фёдорова',29,'w'),
('Андрей','Ройзман',30	,'m'),
('София','Турыгина',15,'w'),
('Анастасия','Татаренкова',21,'w'),
('Валерий','Ковальчук',29,'m');
*/

/*
CREATE TABLE first_names (
id	INTEGER UNSIGNED auto_increment PRIMARY KEY,
first_name	VARCHAR(50)
);
INSERT INTO first_names (first_name)
VALUES
('Дмитрий'),
('Светлана'),
('Никита'),
('Денис'),
('Алена'),
('Василий'),
('Ярослав'),
('Анатолий'),
('Юлия'),
('Андрей'),
('София'),
('Анастасия'),
('Валерий');

CREATE TABLE last_names (
id	INTEGER UNSIGNED auto_increment PRIMARY KEY,
last_names	VARCHAR(50)
);
INSERT INTO last_names (last_names)
VALUES
('Федьков'),
('Иванова'),
('Трутнев'),
('Кац'),
('Сорокина'),
('Сорокин'),
('Белый'),
('Дейчман'),
('Фёдорова'),
('Ройзман'),
('Турыгина'),
('Татаренкова'),
('Редько');
*/

/*В таблицах first_names и last_names хранятся все разрешенные в системе имена и фамилии,
а в таблице people — все зарегистрированные пользователи.
Получите из people всех людей, у которых неверные имена или фамилии.
Выведите id, имя и фамилию. Данные отсортируйте по фамилии.*/
/*
UPDATE people1
SET last_name ='Иванова' WHERE id = 2;*/

SELECT p1.id, p1.first_name,p1.last_name FROM people1 AS p1
WHERE ((p1.first_name not IN 
(SELECT first_name FROM first_names))
OR 
(p1.last_name not IN 
(SELECT last_names FROM last_names)))
ORDER BY p1.last_name
;



