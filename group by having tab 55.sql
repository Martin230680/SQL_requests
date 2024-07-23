DROP TABLE IF EXISTS products10;
CREATE TABLE products10 (
id INT UNSIGNED auto_increment primary key NOT NULL,
`name` VARCHAR(255) NULL,
`count` INTEGER NULL,
price float NULL,
category_id INTEGER
    );
INSERT INTO products10 (name, count, price, category_id)
VALUES
('Сникерс большой',3,56,1),
('Сливочное масло Милка',2,104.4,2),
('Яблоки ред',7,98,3),
('Яблоки голден',3,89,3),
('Марс',	7,	36.5,1),
('Сметана 20',2,49,2),
('Сметана 15', 4,	45,2),
('Сметана 20 фермерская',1,78.9,2),
('Апельсины',	5,70,3),
('Макароны 1 кг',4,56,4),
('Вода 1 л',12,18,5),
('Гречка 0,5 кг',4,45,4),
('Хлеб белый',7,23.4,8),
('Творог9',3,56,2),
('Баунти',0,38.9,1),
('Батон купеческий',5,34.5,8),
('Говядина',1,308,17),
('Помидоры',8,46,3),
('Индейка',2,534,17),
('Свинина',0,349,17),
('Тарелки 12 шт',0,780,6),
('Кружки 6 шт',0,230,6);

DROP TABLE IF EXISTS deals;
CREATE TABLE deals (
id INT UNSIGNED auto_increment primary key NOT NULL,
client_id INTEGER UNSIGNED NOT null,
`date` DATE NOT NULL,
amount INTEGER UNSIGNED NOT NULL
);
INSERT INTO deals (client_id,	`date`,	amount)
VALUES
(174,'2015-01-04',24500),
(19,'2015-01-04',	62000),
(792,'2015-01-12',135000),
(8817,'2015-01-14',60000),
(138,'2015-01-23',75000),
(9841,'2015-01-31',35000),
(49184,'2015-02-01',6800),
(145,'2015-02-16',12000),
(95,'	2015-02-28',75000),
(481,'2015-03-12',210000),
(491,'2015-03-12',35300),
(7619,'2015-04-01',78000),
(45,'2015-04-14',	112000),
(45,'2015-04-14',	49000),
(45,'2015-04-14',	84000);

DROP TABLE IF EXISTS bus_logs;
CREATE TABLE bus_logs (
id INT UNSIGNED auto_increment primary key NOT NULL,
driver_id INTEGER UNSIGNED NOT null,
`time` DATEtime NOT NULL,
diff INTEGER NOT NULL
);
INSERT INTO bus_logs (driver_id,`time`,diff)
VALUES
(1,'2018-06-14 12:00:44',0),
(2,'2018-06-14 12:01:50',33),
(3	,'2018-06-14 12:04:20',-60),
(4	,'2018-06-14 12:06:28',5),
(1,'2018-06-14 12:08:56',-10),
(2	,'2018-06-14 12:10:01',-1),
(3	,'2018-06-14 12:10:01',27),
(4,'2018-06-14 12:10:01',30),
(1,'2018-06-14 12:10:01',22),
(2	,'2018-06-14 12:10:01',64),
(3,'2018-06-14 12:10:01',-18),
(4	,'2018-06-14 12:10:01',12),
(5	,'2018-06-14 12:10:01',30),
(2	,'2018-06-14 12:10:01',-40),
(3	,'2018-06-14 12:10:01',18),
(4	,'2018-06-14 12:10:01',10),
(1	,'2018-06-14 12:10:01',12),
(2	,'2018-06-14 12:10:01',34),
(3,'2018-06-14 12:10:01',-42),
(4,'2018-06-14 12:10:01',8),
(1	,'2018-06-14 12:10:01',5),
(2	,'2018-06-14 12:10:01',27),
(3	,'2018-06-14 12:10:01',21),
(4,'2018-06-14 12:10:01',-4),
(5,'2018-06-14 12:10:01',-30);


DROP TABLE IF EXISTS deals1;
CREATE TABLE deals1 (
id INT UNSIGNED auto_increment primary key NOT NULL,
user_id INTEGER UNSIGNED NOT null,
`date` DATE NOT NULL,
amount INTEGER UNSIGNED NOT NULL,
`status` ENUM ('closed', 'new','in_progress') NOT NULL DEFAULT 'closed'
);
/* отработка default */
INSERT INTO deals1 (user_id,`DATE`,amount)
VALUES
(1,'2015-01-04',24500),
(2,'2015-01-04',62000),
(3	,'2015-01-12',1350);
INSERT INTO deals1 (user_id,`DATE`,amount,`STATUS`)
VALUES
(1	,'2015-01-14',600	,'new'),
(2	,'2015-01-23',75000,'closed'),
(3	,'2015-01-31',35000,'closed'),
(4	,'2015-02-01',6800,'closed'),
(1	,'2015-02-16',12000,'closed'),
(2	,'2015-02-28',75000,'new'),
(3	,'2015-03-12',210000	,'closed'),
(4	,'2015-03-12',35300,'closed'),
(1,'2015-04-01',78000,'closed'),
(2,'2015-04-14',112000,'in_progress'),
(3,'2015-04-14',49000,'closed'),
(4,'2015-04-14',84000,'new');


