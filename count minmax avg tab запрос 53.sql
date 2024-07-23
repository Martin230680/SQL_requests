DROP TABLE IF EXISTS users12;
CREATE TABLE users12(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255) not NULL,
last_name VARCHAR(255) not NULL,
age INTEGER not NULL,
sex VARCHAR(3) not NULL
);
    
INSERT INTO users12 (first_name,last_name,age,sex)
VALUES
('Дмитрий','Федьков',18,'m'),
('Светлана','	Иванова',30,'w'),
('Никита	','Трутнев',	17	,'m'),
('Денис	','Кац',	22	,'m'),
('Алена	','Сорокина	',16,'w'),
('Василий','	Федьков',	44,'m'),
('Ярослав','	Сорокин	',17	,'m'),
('Денис','	Белый	',23,'m'),
('Анатолий	','Дейчман',	21	,'m'),
('Юлия','	Фёдорова	',29,'w'),
('Андрей	','Ройзман',	30	,'m'),
('София','	Турыгина	',31,'w'),
('Анастасия	','Татаренкова',	21,'w'),
('Валерий	','Редько',	29,'m');

DROP TABLE IF EXISTS order6;
CREATE TABLE order6(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
`date` datetime not NULL,
amount INTEGER UNSIGNED not NULL,
`status` ENUM ('success','cancelled') not NULL DEFAULT 'success'
);
INSERT INTO order6 (user_id,`date`,amount,`status`)
VALUES
(138,'2014-01-23 17:04:04',4500,'success'),
(491,'2014-03-12 12:12:43',700,'success'),
(9841,'2014-12-31 08:53:25',1240,'success'),
(174,'2015-01-04 18:23:09',500,'success'),
(19,'2015-01-04 18:25:27',8700,'cancelled'),
(792,'2015-01-12 09:23:14',1350,'success'),
(8817,'2015-01-14 17:16:39',600,'success'),
(49184,'2015-02-01 13:32:17',680,'success'),
(145,'2015-02-16 14:44:05',1400,'success'),
(95,'2015-02-28 02:00:47',4300,'cancelled'),
(481,'2015-03-12 08:30:23',8000,'success'),
(619,'2015-04-01 13:04:47',980,'success'),
(45,'2015-04-14 23:21:25',	1600,'success');

DROP TABLE IF EXISTS users13;
CREATE TABLE users13(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255) not NULL,
last_name VARCHAR(255) not NULL,
age INTEGER not NULL,
activity_date datetime not NULL
);
    
INSERT INTO users13 (first_name,last_name,age,activity_date)
VALUES
('Дмитрий','Федьков',18,'2018-04-08 12:34:41'),
('Светлана','	Иванова',30,'2018-04-08 12:31:16'),
('Никита	','Трутнев',	17	,'2017-01-12 08:00:03'),
('Денис	','Кац',	22	,'2018-03-30 23:57:11'),
('Алена	','Сорокина	',16,'2018-04-01 00:10:23'),
('Василий','	Федьков',	44,'2017-12-23 18:36:45'),
('Ярослав','	Сорокин	',17	,'2018-04-08 12:31:18'),
('Денис','	Белый	',23,'2018-04-08 12:36:17'),
('Анатолий	','Дейчман',	21	,'2018-04-08 11:22:34'),
('Юлия','	Фёдорова	',29,'2018-04-07 12:34:42'),
('Андрей	','Ройзман',	30	,'2018-04-08 12:35:09'),
('София','	Турыгина	',31,'2018-04-05 07:12:41'),
('Анастасия	','Татаренкова',	21,'2018-04-08 12:31:17'),
('Валерий	','Редько',	29,'2018-04-08 12:34:59');

DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`date` DATETIME NOT NULL,
amount FLOAT NOT NULL,
direction ENUM ('in','out') DEFAULT 'out',
no_tax bool not NULL DEFAULT false
);

INSERT INTO transactions (`date`,amount,direction,no_tax)
VALUES
('2017-02-01 11:35:17',	1100.50,'in',False),
('2017-02-03 15:43:18',	1200,'in',True),
('2017-02-14 12:12:02',	1200,'in',False),
('2017-02-27 14:00:29',	1300,'out',False),
('2017-03-01 10:01:00',	700,'out',False),
('2017-03-04 12:00:00',	850.43,'in',True),
('2017-03-06 23:12:04',	400.40,'in',False),
('2017-03-06 12:04:17',	1400,'in',False),
('2017-03-07 13:00:00',	4400,'out',False),
('2017-03-14 12:59:59',	3000,'in',False),
('2017-03-25 12:15:07',	780.20,'in',False),
('2017-03-26 13:00:01',	1900,'in',True),
('2017-03-31 08:13:25',	2000,'in',False),
('2017-04-24 11:35:17',	250,'out',False),
('2017-04-24 11:35:01',	1100,'in',True),
('2017-04-27 12:50:44',	5000,'out',False),
('2017-04-28 11:44:41',	790,'in',False);



