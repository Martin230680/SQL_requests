/*В таблицах first_names и last_names хранятся все доступные в системе имена и фамилии. 
Получите все возможные комбинации фамилий и имен. Фамилии мужского пола могут сочетаться 
только с мужскими именами, тоже касается и женских фамилий и имен.
В итоговой таблице выведите фамилии, имена и пол. Данные отсортируйте сперва по полу, а затем по фамилии и имени.*/
/*
DROP TABLE if EXISTS first_names1;
*/
/*
DROP TABLE if EXISTS last_names1;
*/

/*
CREATE TABLE first_names1(
id INTEGER UNSIGNED,
first_name VARCHAR(50),
sex varchar(3)
);
INSERT INTO first_names1(id,	first_name,	sex)
VALUES
(1,'Дмитрий','m'),
(2,'Светлана','w'),
(3,'Никита','m'),
(4,'Денис','m'),
(5,'Алена','w'),
(6,'Василий','m'),
(7,'Ярослав','m'),
(8,'Анатолий','m'),
(9,'Юлия','w'),
(10,'Андрей','m'),
(11,'София','w'),
(12,'Анастасия','w'),
(13,'Валерий','m');
*/

/*
CREATE TABLE last_names1(
id INTEGER UNSIGNED,
last_name VARCHAR(50),
sex varchar(3)
);

INSERT INTO last_names1 (id,	last_name,	sex)
VALUES
(1,'Федьков','m'),
(2,'Иванова','w'),
(3,'Трутнев','m'),
(4,'Кац','m'),
(5,'Сорокина','w'),
(6,'Сорокин','m'),
(7,'Белый','m'),
(8,'Дейчман	','m'),
(9,'Фёдорова','w'),
(10,'Ройзман','m'),
(11,'Турыгина','w'),
(12,'Татаренкова','w'),
(13,'Редько','	m');
*/

SELECT * FROM 
(SELECT ln1.last_name, fn1.first_name, fn1.sex FROM first_names1 AS fn1
LEFT JOIN last_names1 AS ln1
ON (fn1.id = ln1.id or fn1.id <> ln1.id) AND fn1.sex = Ln1.sex
) AS tb
ORDER BY sex, last_name, first_name;



