DROP TABLE if exists users15;
CREATE TABLE users15(
id	INTEGER,
first_name VARCHAR(100),
last_name VARCHAR(100),
age INTEGER
);
INSERT INTO users15(id, first_name, last_name, age)
VALUES 
(1,'Вероника','Петрова',20),
(2,'Светлана','Иванова',17),
(3,'Елена','Абрамова',18),
(4,'Василиса','Кац',15),
(5,'Алёна','Сорокина',22),
(6,'Алёна','Федькова',28),
(7,'Лиана','Сорокин',21),
(8,'Карина','Белая',30),
(9,'Анастасия','Дейчман',16),
(10,'Юлия','Фёдорова',25);


DROP TABLE if exists users_details;
CREATE TABLE users_details(
id	INTEGER,
bio VARCHAR(100)
);
INSERT INTO users_details(id, bio)
VALUES 
(1,'Биография Вероники Петровой'),
(2,'Биография Светланы Ивановой'),
(3,'Биография Елены Абрамовой'),
(4,'Биография Василисы Кац'),
(5,'Биография Алёны Сорокиной'),
(6,'Биография Алёны Федьковой'),
(7,'Биография Лианы Сорокиной'),
(8,'Биография Карины Белой'),
(9,'Биография Анастасии Дейчман'),
(10,'Биография Юлии Фёдоровой');

DROP TABLE if exists products11;
CREATE TABLE products11(
id INTEGER,
`name` VARCHAR(100),
`count`INTEGER,
price integer
);
INSERT INTO products11(id,`name`,`count`,price)
VALUES 
(1,'Dulux Diamond Matt',5,700),
(2,'Marshall Maestro',3,860),
(3,'Dulux Easy',3,400),
(4,'Marshall Export-2',2,450),
(5,'Dulux Vinyl Matt',0,720);


DROP TABLE if exists products_details;
CREATE TABLE products_details(
id INTEGER,
product_id INTEGER,
`description` text
);
INSERT INTO products_details(id,product_id,`description`)
VALUES 
(1,2,'Выдерживает сухую уборку'),
(2,4,'Долговечное супербелое покрытие'),
(3,3,'Подходит для всех типов обоев'),
(4,1,'Очень прочное покрытие'),
(5,5,'Непревзойденная красота и гладкость покрытия');

DROP TABLE if exists users16;
CREATE TABLE users16(
id	INTEGER,
first_name VARCHAR(100),
last_name VARCHAR(100),
age INTEGER,
date_joined DATETIME
);
INSERT INTO users16(id, first_name, last_name, age,date_joined)
VALUES 
(1,'Дмитрий','Федьков',18,'2015-04-08 12:34:41'),
(2,'Светлана','Иванова',30,'2015-04-08 12:31:16'),
(3,'Никита','Трутнев',17,'	2016-01-12 08:00:03'),
(4,'Денис','Кац',22,'2016-03-30 23:57:11'),
(5,'Алена','Сорокина',16,'2016-04-01 00:10:23'),
(6,'Василий','Федьков',44,'2016-12-23 18:36:45'),
(7	,'Ярослав','Сорокин',17,'2017-04-08 12:31:18'),
(8	,'Денис','Белый',23,'2017-04-08 12:36:17'),
(9,'Анатолий','Дейчман',21,'2017-04-08 11:22:34'),
(10,'Юлия','Фёдорова',29,'2017-04-07 12:34:42'),
(11,'Андрей','Ройзман',30,'2017-04-08 12:35:09'),
(12,'София','Турыгина',15,'2017-04-05 07:12:41'),
(13,'Анастасия','Татаренкова',21,'2017-03-12 08:00:23'),
(14,'Валерий','Редько',29,'2017-04-08 12:34:59');

DROP TABLE if exists users_p;
CREATE TABLE users_p(
id INTEGER,
series INTEGER,
`number`INTEGER
);
INSERT INTO users_p(id,series,`number`)
VALUES 
(1,3205,847414),
(2,4582,748294),
(3,3209,184851),
(4,5514,981455),
(5,3201,184755),
(6,5614,194710),
(7,9831,184751),
(8,4561,856194),
(9,3135,817414),
(10,3276,174651),
(11,4532,249584),
(12,1401,736144),
(13,4104,194714),
(14,1409,184619);

DROP TABLE if exists users17;
CREATE TABLE users17(
id INTEGER,
email VARCHAR(100)
);
INSERT INTO users17(id, email)
values
(1	,'user1@domain.com'),
(2	,'user2@domain.com'),
(3	,'user3@domain.com'),
(4	,'user4@domain.com'),
(5	,'user5@domain.com'),
(6	,'user6@domain.com'),
(7	,'user7@domain.com'),
(8	,'user8@domain.com'),
(9	,'user9@domain.com'),
(10,'user10@domain.com');

DROP TABLE if exists users_details1;
CREATE TABLE users_details1(
id	INTEGER,
first_name VARCHAR(100),
last_name VARCHAR(100),
age INTEGER
);
INSERT INTO users_details1(id, first_name, last_name, age)
VALUES 
(1,'Виктор','Алтушев',20),
(2,'Светлана','Иванова',17),
(3,'Елена','Абрамова',18),
(4,'Василиса','Кац',15),
(5,'Антон','Сорокин',22),
(6,'Алёна','Алясева',28),
(7,'Дмитрий','Калякин',21),
(8,'Карина','Белая',30),
(9,'Анастасия','Дейчман',16),
(10,'Юлия','Фёдорова',25);


DROP TABLE if exists users18;
CREATE TABLE users18(
id	INTEGER,
first_name VARCHAR(100),
last_name VARCHAR(100),
active bool
);
INSERT INTO users18(id, first_name, last_name, active)
VALUES 
(1,'Виктор','Алтушев',true),
(2,'Светлана','Иванова',true),
(3,'Елена','Абрамова',true),
(4,'Василиса','Кац',true),
(5,'Антон','Сорокин',true),
(6,'Алёна','Алясева',false),
(7,'Дмитрий','Калякин',true),
(8,'Карина','Белая',true),
(9,'Анастасия','Дейчман',true),
(10,'Юлия','Фёдорова',FALSE);

DROP TABLE if exists users_details2;
CREATE TABLE users_details2(
id	INTEGER,
bio VARCHAR(100)
);
INSERT INTO users_details2(id, bio)
VALUES 
(1,'Биография Виктора Алтушева'),
(2,'Биография Светланы Ивановой'),
(3,'Биография Елены Абрамовой'),
(4,'Биография Василисы Кац'),
(5,'Биография Алёны Сорокиной'),
(6,'Биография Алёны Федьковой'),
(7,'Биография Лианы Сорокиной'),
(8,'Биография Карины Белой'),
(9,'Биография Анастасии Дейчман'),
(10,'Биография Юлии Фёдоровой');
