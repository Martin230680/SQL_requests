DROP TABLE if EXISTS categories;
CREATE TABLE categories(
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(100)
);
INSERT INTO categories( `name`)
VALUES
('Шоколад'),
('Молочные продукты'),
('Фрукты и овощи'),
('Крупы'),
('Напитки'),
('Посуда'),
('Шампуни'),
('Хлеб'),
('Консервы'),
('Чай и кофе'),
('Алкоголь'),
('Колбасы'),
('Полуфабрикаты'),
('Растительное масло'),
('Рыба'),
('Товары гигиены'),
('Мясо');
DROP TABLE if EXISTS `order7`;
CREATE TABLE `order7` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`user_id` INT(10) UNSIGNED NOT NULL,
	`date` DATETIME NOT NULL,
	`amount` INT(10) UNSIGNED NOT NULL,
	`status` ENUM('cancelled','new','completed') NOT NULL DEFAULT 'cancelled'

);

INSERT INTO `order7`(user_id,`DATE`,amount,`status`)
VALUES

(3,'2014-01-23 17:04:04',4500,'completed'),
(1,'2014-03-12 12:12:43',700,'completed'),
(10,'2014-12-31 08:53:25',1240,'new'),
(7,'2015-01-04 18:23:09',500,'completed'),
(1,'2015-01-04 18:25:27',8700,'cancelled'),
(4,'2015-01-12 09:23:14',1350,'completed'),
(10,'2015-01-14 17:16:39',600,'new'),
(1,'2015-02-01 13:32:17',680,'completed'),
(3,'2014-02-16 14:44:05',1400,'completed'),
(5,'2015-02-28 02:00:47',4300,'cancelled'),
(10,'2015-03-12 08:30:23',8000,'completed'),
(2,'2015-04-01 13:04:47',980,'completed'),
(2,'2015-04-14 23:21:25',1600,'completed');

DROP TABLE if exists users21;
CREATE TABLE users21(
`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`first_name` VARCHAR(100),
`last_name` VARCHAR(100),
is_doctor BOOL NOT NULL DEFAULT FALSE
);

INSERT INTO users21(first_name,last_name,is_doctor)
VALUES
('Виктор','Алтушев',FALSE),
('Светлана','Иванова',False),
('Елена','Абрамова',False),
('Василиса','Кац',True),
('Антон','Сорокин',False),
('Алёна','Алясева',False),
('Лиана','Белая',True),
('Карина','Белая',False),
('Анастасия','Дейчман',True),
('Юлия','Фёдорова',FALSE);

DROP TABLE if EXISTS calendar3;
CREATE TABLE calendar3(
`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
doctor_id INTEGER,
client_id INTEGER,
visit_date DATETIME
);
INSERT INTO calendar3 (doctor_id,client_id,visit_date)
VALUES
(4,1,'2017-04-16 11:00:00'),
(4	,2	,'2017-04-17 12:00:00'),
(7	,6	,'2017-04-16 15:30:00'),
(9	,8	,'2017-04-17 10:00:00'),
(4	,7	,'2017-04-17 13:00:00'),
(4,5	,'2017-04-17 14:00:00'),
(7	,1	,'2017-04-17 14:00:00'),
(9	,2	,'2017-04-17 13:30:00'),
(9,	3	,'2017-04-17 12:30:00'),
(9,	5	,'2017-04-18 12:00:00'),
(4,	6	,'2017-04-17 15:30:00'),
(4,	6	,'2017-04-17 16:30:00'),
(4,	8	,'2017-04-17 17:00:00'),
(7	,2	,'2017-04-20 12:30:00'),
(9,	3	,'2017-05-17 14:00:00'),
(9,	4	,'2017-04-17 15:00:00');

DROP TABLE if EXISTS arrival1;
CREATE TABLE `arrival1` (
	`id` INT(10) UNSIGNED NULL DEFAULT NULL,
	`user_id` INT(10) UNSIGNED NULL DEFAULT NULL,
	`a_date` DATE NULL DEFAULT NULL,
	`a_time` TIME NULL DEFAULT NULL
);
INSERT INTO `arrival1`(id,	user_id,	a_date,	a_time)
VALUES
(1,	1,	'2017-03-30','08:50:12'),
(2,	3,	'2017-03-30','09:00:01'),
(3,	5,	'2017-03-30','08:59:59'),
(4,	6,	'2017-03-30','09:04:37'),
(5,	7, '2017-03-30','08:45:01'),
(6,	1,	'2017-03-31','08:00:00'),
(7,	3,	'2017-03-31','09:00:05'),
(8,	5,	'2017-03-31','09:00:00'),
(9,	6,	'2017-03-31','08:57:25'),
(10,	7,	'2017-03-31','08:46:04'),
(11,	1,	'2017-04-01','08:45:31'),
(12,	3,	'2017-04-01','08:56:41'),
(13,	5,	'2017-04-01','08:51:25'),
(14,	6,	'2017-04-01','08:52:11'),
(15,	7,	'2017-05-01','08:45:04');



