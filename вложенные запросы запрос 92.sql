/*CREATE TABLE people(
id	INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),	
age INTEGER UNSIGNED,
sex VARCHAR(3)
);*/
/*
INSERT INTO people (first_name,	last_name,	age,	sex)
VALUES
('Дмитрий','Федьков',18,'m'),
('Светлана','Иванова',30,'w'),
('Никита','Трутнев',17,'m'),
('Денис','Кац',22,'m'),
('Алена','Сорокина',	16,'w'),
('Василий','Федьков',44,'m'),
('Ярослав','Сорокин',17,'m'),
('Денис','Белый',	23	,'m'),
('Анатолий','Дейчман	',21,'m'),
('Юлия','Фёдорова',29,'w'),
('Андрей','Ройзман',30,'m'),
('София','Турыгина',15,'w'),
('Анастасия	','Татаренкова',21,'w'),
('Валерий','Редько',29,'m'),
('Денис','Кац',	2,'m'),
('Анатолий','Дейчман',34,'m');
*/
/*
CREATE TABLE suspects (
fn	VARCHAR(50),	
LN	VARCHAR(50),	
age INTEGER UNSIGNED
);
INSERT INTO suspects(fn,LN	,age)
VALUES
('Денис','Кац',	22),
('Анатолий','Дейчман',21),
('Анастасия	','Татаренкова',21);
*/
/*В таблице people содержится список всех людей, а в suspects — подозреваемых.
Получите из people всех подозреваемых основываясь на данных из таблицы suspects.*/

SELECT p.first_name, p.last_name, p.age FROM  people AS p
WHERE (p.first_name, p.last_name, p.age) IN(
SELECT s.fn, s.ln, s.age  FROM suspects AS s);
