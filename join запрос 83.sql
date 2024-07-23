/*drop table if EXISTS managers;
CREATE TABLE managers(
id	INT,
first_name VARCHAR(50),	
last_name VARCHAR(50)
);
INSERT INTO managers(id,first_name,last_name)	
VALUES
(1,'Антон','	Федоров'),
(2,'Валентин','	Гаврилов'),
(3,'Александра	','Калинина'),
(4,'Наталья	','Свердлова');

drop table if EXISTS companies;
CREATE TABLE companies(
id	INT,
name VARCHAR(50)
);
INSERT INTO companies(id,	NAME)
VALUES
(1,'Сигма плюс'),
(2,'	Cloud Computing'),
(3	,'ИП Кац В. И.'),
(4	,'ООО Вектор'),
(5	,'Пластиковые окна');

*/
/*
drop table if EXISTS clients1;
CREATE TABLE clients1(
id	INT,
first_name VARCHAR(50),	
last_name VARCHAR(50),	
company_id INT
);

INSERT into clients1(id,first_name,	last_name,	company_id)
VALUES
(1,'	Виктор','	Алтушев',	1),
(2,'	Светлана	','Иванова',	2),
(3,'	Елена','	Абрамова',	2),
(4	,'Василиса	','Кац',	3),
(5,'	Антон	','Сорокин',	NULL),
(6	,'Алёна	','Алясева',	5),
(7	,'Лиана	','Белая',	4),
(8	,'Карина	','Белая	',2),
(9	,'Анастасия	','Дейчман',	NULL),
(10,'	Юлия','	Фёдорова',	1);
*/
/*
drop table if EXISTS calls;
CREATE TABLE calls(
id	INT,
client_id INT,	
manager_id	INT,
`date` DATETIME,	
duration_sec INT
);
INSERT INTO calls(id,	client_id,	manager_id,	DATE	,duration_sec)
VALUES
(1	,5,1,'2018-04-04 12:30:12',78),
(2	,4	,2,'2018-04-04 12:35:11',123),
(3	,2,3,'2018-04-04 14:50:00',50),
(4	,8,4,'2018-04-04 17:30:24',17),
(5	,8,4,'2018-04-05 08:12:51',389),
(6	,9,2,'2018-04-05 09:09:34',56),
(7	,2,1,'2018-04-05 11:01:08',245),
(8	,1,2,'2018-04-05 12:04:01',145),
(9	,5,1,'2018-04-05 16:42:17',90),
(10,3,4,'2018-04-06 10:12:28',95),
(11,10,3,'2018-04-06 14:10:54',58),
(12,7,4,'2018-04-06 12:56:33',129),
(13,2,2,'2018-04-06 12:12:17',144),
(14,3,1,'2018-04-06 12:31:15',780),
(15,3,3,'2018-04-06 14:13:26',412),
(16,1,3,'2018-04-06 17:22:44',129),
(17,5,1,'2018-04-07 08:00:32',76),
(18,7,2,'2018-04-07 09:11:14',53),
(19,2,3,'2018-04-07 12:07:55',145),
(20,1,4,'2018-04-07 16:24:28',201);
*/
/*
В CRM системе компании есть 4 таблицы:

1. managers — менеджеры (сотрудники) компании;
2. companies — контрагенты компании;
3. clients — сотрудники контрагентов;
4. calls — звонки сотрудников контрагентов менеджерам компании.
В таблице также фиксируется дата (date) и продолжительность (duration_sec) звонка в секундах.

Получите данные о звонках за 5 апреля 2018 года.
Выведите 5 колонок:

time — время звонка в формате ЧЧ:ММ;
manager — имя и фамилия менеджера, который принял звонок;
client — имя и фамилия сотрудника контрагента, который позвонил;
company — название компании контрагента, NULL если названия нет;
duration — продолжительность звонка в формате ЧЧ:ММ:СС.
Итоговую таблицу отсортируйте по времени.*/

SELECT 
TIME_FORMAT((time(cl.date)), "%h:%i") AS `time`,
concat(mg.first_name,' ',mg.last_name) AS manager,
concat(cls.first_name,' ', cls.last_name) AS `client`,
cm.name AS company,
SEC_TO_TIME(cl.duration_sec) AS duration
FROM calls AS cl
JOIN clients1 AS cls ON cls.id = cl.client_id
left OUTER JOIN companies AS cm ON cm.id = cls.company_id
JOIN managers AS mg ON mg.id = cl.manager_id
WHERE date(cl.`date`) = '2018-04-05'
ORDER BY `time`;

/*В CRM системе компании есть 4 таблицы:

1. managers — менеджеры (сотрудники) компании;
2. companies — контрагенты компании;
3. clients — сотрудники контрагентов;
4. calls — звонки сотрудников контрагентов менеджерам компании. 
В таблице также фиксируется дата (date) и продолжительность (duration_sec) звонка в секундах.

Получите список компаний и общую продолжительность звонков по каждой из них.
Выведите 2 колонки:

company — название компании;
duration — общая продолжительность звонков в формате Ч:ММ:СС.
Данные отсортируйте по продолжительности разговоров.
*/

SELECT 
cm.name AS company,
SEC_TO_TIME(SUM(cl.duration_sec)) AS duration
FROM calls AS cl
JOIN clients1 AS cls ON cls.id = cl.client_id
left OUTER JOIN companies AS cm ON cm.id = cls.company_id
JOIN managers AS mg ON mg.id = cl.manager_id
GROUP BY cm.name;

/*В CRM системе компании есть 4 таблицы:
1. managers — менеджеры (сотрудники) компании;
2. companies — контрагенты компании;
3. clients — сотрудники контрагентов;
4. calls — звонки сотрудников контрагентов менеджерам компании. В таблице 
также фиксируется дата (date) и продолжительность (duration_sec) звонка в секундах.
Получите среднее время общения менеджеров с сотрудниками Cloud Computing.
Выведите 3 колонки:
first_name — имя менеджера;
last_name — фамилия менеджера;
avg_duration — средняя продолжительность звонка в формате ЧЧ:ММ:СС.
Данные отсортируйте по средней продолжительности разговоров в обратном порядке.*/

SELECT 
mg.first_name, mg.last_name, SEC_TO_TIME(round(AVG(cl.duration_sec),0)) AS avg_duration
FROM calls AS cl
JOIN clients1 AS cls ON cls.id = cl.client_id
left OUTER JOIN companies AS cm ON cm.id = cls.company_id
JOIN managers AS mg ON mg.id = cl.manager_id
GROUP BY mg.first_name, mg.last_name
ORDER BY avg_duration;