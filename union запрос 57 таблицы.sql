DROP TABLE if EXISTS bank_transactions;
CREATE TABLE bank_transactions(
id	INTEGER UNSIGNED,
client_id INTEGER UNSIGNED,
`date` DATETIME,
amount FLOAT
);
INSERT INTO bank_transactions (id,client_id,`date`,amount)
VALUES
(1,12,'2017-02-01 11:35:17',560.00),
(2,56,'2017-03-03 15:43:18',3000.00),
(3,124,'2017-04-14 12:12:02',1400.50);

DROP TABLE if EXISTS cashbox_transactions;
CREATE TABLE cashbox_transactions(
id	INTEGER UNSIGNED,
client_id INTEGER UNSIGNED,
`date` DATETIME,
amount FLOAT
);

INSERT INTO cashbox_transactions (id,client_id,`date`,amount)
VALUES
(1,56,'2017-02-04 10:12:09',74.00),
(2,451,'2017-04-10 22:12:04',871.00),
(3,98,'2018-02-16 09:00:30',1000.00);




DROP TABLE if EXISTS users14;
CREATE TABLE users14(
id	INTEGER UNSIGNED,
first_name VARCHAR(50),
last_name VARCHAR(50),
age iNTEGER UNSIGNED,
sex VARCHAR(2)
);
INSERT INTO users14(id,first_name,last_name,age,sex)
VALUES
(1,'Дмитрий','	Федьков',8,'m'),
(2,'Светлана','Иванова',30,'w'),
(3,'Никита','Трутнев',17,'m');

DROP TABLE if EXISTS members;
CREATE TABLE members(
id	INTEGER UNSIGNED,
`name` VARCHAR(50),
birthday DATE,
sex VARCHAR(2)
);
INSERT INTO members (id,`name`,birthday,sex)
VALUES
(1,'Денис Кац','1991-04-04','m'),
(2,'Алена Сорокина','1998-11-23','w'),
(3,'Василий Федьков','2000-10-08','m');

DROP TABLE if EXISTS cars2;
CREATE TABLE cars2(
id	INTEGER UNSIGNED,
`number` VARCHAR(50),
mark VARCHAR(50),
model VARCHAR(50)
);
INSERT INTO cars2 (id,`number`,mark,model)
VALUES
(1,'с065мк78','Lada','Kalina'),
(2,'с165ор78','Toyota','Prius'),
(3,'в764хх78','Pegeuot','307');


DROP TABLE if EXISTS region39;
CREATE TABLE region39(
id	INTEGER UNSIGNED,
`number` VARCHAR(50),
mark VARCHAR(50),
model VARCHAR(50)
);
INSERT INTO region39(id,`number`,mark,model)
VALUES
(1,'а123ор','Ford','Fiesta'),
(2,'a455аа','Ford','Mondeo'),
(3,'х104ор','Mazda','Demio');


DROP TABLE if EXISTS avto;
CREATE TABLE avto(
id	INTEGER UNSIGNED,
`number` VARCHAR(50),
region INTEGER UNSIGNED,
mark VARCHAR(50),
model VARCHAR(50)
);
INSERT INTO avto (id,`number`,region,mark,model)
VALUES
(1,'X555XX',42,'Toyota','Land Cruiser'),
(2,'C187OP',42,'Ford','Focus'),
(3,'B134BA',42,'Nissan','Juke');

DROP TABLE if EXISTS autos;
CREATE TABLE autos(
id	INTEGER UNSIGNED,
`number` VARCHAR(50),
car VARCHAR(50)
);
INSERT INTO autos(id,`number`,car)
VALUES
(1,'в111ор55','Ford Focus'),
(2,'м259ав55','   BMW    X5  '),
(3,'с149ма55','   Audi      TT  ');



DROP TABLE if EXISTS advs;
CREATE TABLE advs(
id	INTEGER,
user_id INTEGER,	
category_id	INTEGER,
`date` DATETIME,	
`text` text
);
INSERT INTO advs(id,user_id,category_id,`date`,`text`)
VALUES
(10,45,6,'2018-02-14 22:51:07','Продам компьютер iMac'),
(11,1343,55,'2018-02-14 23:31:11','Куплю шубу норковую'),
(12,675,14,'2018-02-14 23:32:43','Продам шкаф из дуба'),
(13,45,6,'2018-02-15 00:12:45','Продам ноутбук Asus'),
(14,874,6,'2018-02-15 01:45:05','Продам ноутбук Sony'),
(15,145,12,'2018-02-15 06:00:04','Продам детское кресло');

DROP TABLE if EXISTS closed_advs;
CREATE TABLE closed_advs(
id	INTEGER,
user_id INTEGER,	
category_id	INTEGER,
`date` DATETIME,	
`text` text
);
INSERT INTO closed_advs(id,user_id,category_id,`date`,`text`)
VALUES
(1,	45	,6	,'2018-02-14 22:51:07','Продам видеокарту Asus'),
(2	,982,	55,'2018-02-14 23:31:11','Куплю жилетку меховую'),
(3	,675,	14,'2018-02-14 23:32:43','Продам мебель на кухню'),
(4	,45,	6,'2018-02-15 00:12:45','Продам ПК на базе Intel'),
(5	,441,	6,'2018-02-15 01:45:05','Продам принтер струйный');


DROP TABLE if EXISTS games;
CREATE TABLE games(
id	INTEGER,
category_id	INTEGER,
`name` VARCHAR(100),	
rating FLOAT,	
`year` year);

INSERT INTO games(id,category_id,`name`,rating,`year`)
VALUES 
(1,2,'The Witcher 3: Wild Hunt',9.61,'2015'),
(2,4,'Warcraft III: The Frozen Throne',9.00,'2003'),
(3,1,'Max Payne 2: The Fall of Max Payne',8.63,'2003'),
(4,3,'The Last of Us',9.45,'2013'),
(5	,3	,'Mafia II',8.94,'2010'),
(6	,1	,'Grand Theft Auto V',9.18,'2013'),
(7	,5	,'Far Cry 3',8.67,'2012'),
(8	,4,'Plants vs. Zombies',8.90,'2009'),
(9	,2,'Diablo III',9.22,'2012'),
(10,8,'Mortal Kombat X',8.70,'2015'),
(11,7,'Tetris',9.05,'1984'),
(12,5,'Doom',8.75,'2016'),
(13,2,'Mass Effect 3',9.00,'2012'),
(14,3,"Uncharted 4: A Thief's End",9.33,'2016'),
(15,2,'Call of Duty: Black Ops II',8.88,'2012'),
(16,5,'Metro: Last Light',9.25,'2013'),
(17,1,'Outlast',9.00,'2013'),
(18,6,'Need for Speed: Most Wanted',9.08,'2005'),
(19,4,'Warcraft III: Reign of Chaos',9.29,'2002'),
(20,3,'The Walking Dead: The Game - Season 2',9.00,'2014');


DROP TABLE if EXISTS paypal_transactions;
CREATE TABLE paypal_transactions(
id	INTEGER UNSIGNED,
client_id INTEGER UNSIGNED,
`date` DATETIME,
amount FLOAT
);

INSERT INTO paypal_transactions(id,client_id,`date`,amount)
VALUES
(1,8471,'2017-02-28 14:12:18',1490.00),
(2,5155,'2017-04-09 14:14:00',2400.50),
(3,56,'2018-01-17 08:45:30',4050.24);


