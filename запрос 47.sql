DROP TABLE IF EXISTS deposits;
CREATE TABLE deposits (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
deposit_id INT UNSIGNED NOT NULL,
initial_sum FLOAT NOT NULL,
percent FLOAT NOT NULL,
years INT UNSIGNED NOT NULL
);
INSERT INTO deposits(user_id,deposit_id,initial_sum,percent,years)
VALUES  
(11,1,50000,7,2),
(817,2,30000,6.7,1),
(47,5	,150000,8.5,4),
(649,4,37000,9,5),
(331,5,50000,7,1),
(4014,1,40000,7,2),
(874,9,4000,8,3),
(441,1,24500,7,2);


DROP TABLE IF EXISTS users7;
CREATE TABLE users7 (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
email VARCHAR (50) NOT NULL,
age INT (3) UNSIGNED NOT null
);

INSERT INTO users7 (first_name,last_name,	email,age)
VALUES 
('Виктор','Алтушев','user1@domain.com',20),
('Светлана','Иванова','user2@domain.com',17),
('Елена','Абрамова','user3@domain.com',18),
('Василиса','Кац','user4@domain.com',15),
('Антон','Сорокин','user5@domain.com',22),
('Алёна','Алясева','user6@domain.com',28),
('Лиана','Белая	','user7@domain.com',21),
('Карина','Белая	','user8@domain.com',30),
('Анастасия','Дейчман','user9@domain.com',16),
('Юлия','Фёдорова','user10@domain.com',25);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (100) NOT NULL,
author_id INT(6) UNSIGNED NOT NULL,
comments INT(6) UNSIGNED NOT null
);
INSERT INTO posts (title,author_id,comments)
VALUES 

('Массовая атака на оборудование Cisco',43,10),
('Знакомство с новым элементом dialog',218,23),
('Что такое «Большие данные»',7361,37),
('Электронные книги и их форматы	',7,50),
('Мангровый лес: крутейший биом планеты',245,5),
('Электроотвёртка своими руками или наш ответ Xiaomi',144,3),
('Реверс инжиниринг процессора ARM1',116,8),
('Программирование современных микроконтроллеров',	565,113),
('Переработка мусора: как уменьшить количество свалок',4515,6),
('Подключаем счетчик воды к умному дому',33,81);


DROP TABLE IF EXISTS passports1;
CREATE TABLE passports1 (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INT (6) UNSIGNED NOT NULL,
series varchar (6) NOT NULL,
`number` varchar (6) NOT NULL

);
INSERT INTO passports1 (user_id,	series,`number`)
VALUES
(1,2301,148145),
(5,801,4091),
(145,3206,14694),
(147,2317,914),
(276,3515,408145),
(18,21,881511),
(7,4515,9184),
(1873,7624,191744),
(887,	23,81400);



DROP TABLE IF EXISTS users8;
CREATE TABLE users8 (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
patronymic VARCHAR (50) NOT NULL

);
INSERT INTO users8 (first_name,last_name,patronymic)
VALUES
('Дмитрий','Федьков','Владимирович'),
('Светлана','Иванова','Анатольевна'),
('Никита','Трутнев',''),
('Денис','Кац','Евгеньевич'),
('Алена','Сорокина','Андреевна'),
('Василий','Федьков','Никитич'),
('Василий','Федьков','Александрович'),
('Яровслав','Сорокин',''),
('Денис','Белый','Антонович'),
('Анатолий','Дейчман','Макcимович'),
('Юлия','Фёдорова','');



DROP TABLE IF EXISTS users9;
CREATE TABLE users9 (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
age INT(3) UNSIGNED NOT NULL
);
INSERT INTO users9 (first_name,last_name,age)
VALUES
('Вероника','Петрова',20),
('Светлана','Иванова',17),
('Елена','Абрамова',18),
('Василиса','Кац',15),
('Алёна','Сорокина',22),
('Алёна','Федькова',28),
('Лиана','Сорокина',21),
('Карина','Белая',30),
('Анастасия','Дейчман',16),
('Юлия','Фёдорова',25),
('Татьяна','Сухова',20);

DROP TABLE IF EXISTS users10;
CREATE TABLE users10 (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(50) NOT NULL,
passport VARCHAR(50) default NULL
);
INSERT INTO users10 (email,passport)
VALUES
('user1@domain.com','2301148145'),
('user2@domain.com','3295409144'),
('user3@domain.com','3206145694'),
('user4@domain.com',	NULL),
('user5@domain.com','3515408145'),
('user6@domain.com','8714881511'),
('user7@domain.com','4515009184'),
('user8@domain.com',	NULL),
('user9@domain.com','2300081400');


DROP TABLE IF EXISTS products9;
CREATE TABLE products9 (
    id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NULL,
    count INTEGER NULL,
    price INTEGER NULL,
    city VARCHAR(255) NULL,
    tipe CHAR(255) NULL,
    total INTEGER NULL
    );
INSERT INTO products9 (id, name, count, price, city, tipe, total)
VALUES
    (1, ' Стиральная машина', 5, 10000, 'Kazan',"new",50000),
    (2, 'Холодильник', 5, 10000, 'Moskow',"new",50000),
    (3, 'Микроволновка', 3, 4000, 'Piter',"new",12000),
    (4, ' Пылесос', 2, 4500, 'Riga',"new",9000),
    (5, ' Вентилятор', 5, 700, 'Kiev',"new",0),
    (6, 'Телевизор', 7, 31740, 'Kaluga',"new", null);
    
DROP TABLE IF EXISTS domains1;
CREATE TABLE domains1 (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
domains VARCHAR(255) NOT NULL
);

INSERT INTO domains1(domains)
VALUES
('yandex.ru'),
('google.com.'),
('habrahabr.ru'),
('hultais.education.'),
('fl.ru'),
('geektimes.ru'),
('facebook.com.'),
('vk.com'),
('github.com.'),
('tproger.ru'),
('auth.vk.com'),
('auth.vk.com.');

