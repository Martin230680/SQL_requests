/*создание таблицы user 6 для последующих запросов с like*/
DROP TABLE if EXISTS users6;
CREATE TABLE users6(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
age INT UNSIGNED NOT NULL
);
INSERT INTO users6(first_name,last_name,age)
VALUES
('Виктор','алтушев',20),
('Светлана','Иванова',17),
('Елена','Абрамова',	18),
('Василиса','Кац',15),
('Антон','Сорокин',22),
('Алёна','Алясева',28),
('Лиана','Белая',21),
('Карина','Белая',30),
('Анастасия','Дейчман',16),
('Юлия','Фёдорова',25),
('Антон','Алтушев',18);

DROP TABLE if exists domains;
CREATE TABLE domains(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
domain VARCHAR(50) NOT NULL,
created DATE NOT NULL);
INSERT INTO domains(domain, created)
VALUES
('yandex.ru','1997-09-23'),
('google.com','1997-09-15'),
('habrahabr.ru','2006-04-17'),
('shultais.education','2015-02-06'),
('fl.ru','2000-03-20'),
('geektimes.ru','2014-09-09'),
('facebook.com','1997-03-29'),
('vk.com','1997-06-24'),
('github.com','2007-10-09'),
('tproger.ru','2012-03-12');

DROP TABLE if exists cars1;
CREATE TABLE cars1(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`number` VARCHAR(50) NOT NULL,
mark VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
color VARCHAR(50) NOT NULL
);
INSERT INTO cars1 (`number`, mark, model,	color)
VALUES

('с065мк78'	,'Lada'	,'Kalina',	'баклажан'),
('с165ор124',	'Toyota',	'Prius',	'зеленый'),
('в764хх45'	,'Pegeuot',	'307',	'черный'),
('а123ор17'	,'Ford',	'Fiesta'	,'серебристый'),
('a455аа44'	,'Ford',	'Mondeo',	'зеленый'),
('х104ор39'	,'Mazda'	,'Demio'	,'желтый'),
('x555xx55',	'Toyota'	,'Land Cruiser'	,'черный'),
('с187ор173',	'Ford',	'Focus'	,'зеленый'),
('в134ва14'	,'Nissan',	'Juke',	'синий'),
('в111ор78'	,'Ford',	'Focus',	'черный'),
('м259мв814',	'BMW'	,'X5'	,'желтый'),
('с149се',	'Audi',	'TT',	'серебристый'),
('к241ав71'	,'Ford',	'Kuga',	'красный'),
('м199ор12'	,'Ford',	'Mondeo'	,'желтый'),
('к871ка12'	,'Nissan',	'Patrol'	,'белый'),
('a245ор14'	,'Ford',	'Mondeo','желтый');

DROP TABLE If EXISTS products8;
CREATE TABLE products8 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `count` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    price INTEGER UNSIGNED NOT NULL DEFAULT 0,
    sizes SET('32','34','36','38','40','42','44','46','48','50','52','M','L','S','XL','XS','2XL','4XL') NULL,
    FULLTEXT INDEX name(name)
);
INSERT INTO products8 (`name`,`count`,price,sizes)
VALUES
('Джинсы Mango Lonny2',3,2990,'34,36,38,42'),
('Куртка Magno Nico2',2,4999,'S,M,L'),
('Платье Love Republic',7,3999,'40,46,48'),
('Джинсы Mango Kim2',3,2499,'34,38,40'),
('Жилет Zarina',7,2519,'42,46,50,52'),
('Юбка Mango Park',2,3999,'34,36,38,40'),
('Комплект Mango (джинсы Lonny 2 и косуха)',4,11900,'36,38,M,L,S'),
('Джинсы Imajeans',6,1842,'34,36,38,42'),
('Джинсы Mango Jane2',4,200,'32,34,40'),
('Водолазка OPIMU',12,1527,'M,XL,L,S'),
('Косуха Mango',4,9990,'M,L,S'),
('Джинсы Uptown2 (Mango)',7,3499,'34,36,38,40,42'),
('Жилет FinFlare',3,6999,'M,L,XL,2XL'),
('Джинсы Mango Soho2',0,1999,'34,36,38'),
('Джеггинсы Sasha Rozhdestvenskaya',5,1691,'42,46,48,50'),
('Плащ Mango SHERLOCK',1,6499,'XS,S,M,L'),
('Юбка Katomi',8,3199,'34,40,42'),
('Джинсы Mango Noa2',2,2499,'32,34,36,38,40,42,44'),
('Легинсы Oodji',0,349,'M,L,S');

DROP TABLE if EXISTS forum;
CREATE TABLE forum (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `subject` VARCHAR(255) NULL,
    author_id INTEGER NULL,
    post TEXT NULL,
    FULLTEXT INDEX forum_text(post,`subject`)
);

INSERT INTO forum( `subject`,	author_id,post)
VALUES
('Почему запрос не работает',	43,'Написал запрос, но он почему-то возвращает не то ...'),
('Оптимальное поле для валюты',	218,'	Какое поле лучше подходит для хранения евро и долларов'),
('Как запустить сервер',	7361,'	С какими настройками лучше всего запускать сервер ...'),
('Версия MySQL',	7,'	На какой версии MySQL работает ваш проверяющий сервер?'),
('Не работает поиск',	245,'	Всё делаю как описано в уроке, но поиск не работает'),
('Ошибка в Mysql',	144,'	Подскажите, что означает эта ошибка ...'),
('Мое решение задачи',	116,'	Скажите, а такое решение подойдет? ...'),
('Ошибка в тексте задачи',	565,'	Добрый день, у вас опечатка в условии задачи'),
('Запрос с NULL',	4515	,'Почему запрос state = NULL выводит ошибки ...'),
('Проблема',	33	,'Пытаюсь выбрать все записи, но постоянно выскакивает ошибка Syntax Error.');

DROP TABLE if EXISTS experiments;
CREATE TABLE experiments(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
temperature INT NOT NULL,
`date` DATE 
);

INSERT INTO experiments (`temperature`,`date`)
VALUES

(3	,'2017-03-09'),
(-8,	'2017-03-09'),
(4,	'2017-03-10'),
(4	,'2017-03-10'),
(12,	'2017-03-10'),
(4	,'2017-03-11'),
(-8,'	2017-03-11'),
(31,	'2017-03-13'),
(-18,	'2017-03-14'),
(-21,'2017-03-14'),
(24,'	2017-03-16'),
(3,	'2017-03-16'),
(5	,'2017-03-17'),
(-6,	'2017-03-18');


DROP TABLE if EXISTS films;
CREATE TABLE films(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
rating FLOAT NOT NULL,
`year` YEAR NOT NULL,
votes INT UNSIGNED NOT NULL
);

INSERT INTO films(`name`,rating,`year`,votes)
VALUES
('Зеленая миля',	9.135	,1999,	431238),
('Бойцовский клуб',	8.715,	1999,	410297),
('Форрест Гамп',	9.013	,1994,421514),
('Побег из Шоушенка',	9.191,	1994,	460078),
('Список Шиндлера',	8.884,	1993,	233033),
('Иван Васильевич меняет профессию',	8.707	,1973	,320339),
('Леон',	8.778	,1994	,351308),
('Начало',	8.775,	2010,	484028),
('1+1',	8.838,	2011,	444942);


DROP TABLE if EXISTS bills;
CREATE TABLE bills(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_id INT UNSIGNED DEFAULT NULL,
amount FLOAT NOT NULL,
personal_sale  INT UNSIGNED DEFAULT 0
);

INSERT INTO bills(user_id,amount,personal_sale)
VALUES
(745,738.65,4),
(1445,531.12,5),
(NULL,800.0,0),
(NULL,1349.0,0),
(56137,67.5,4),
(171,245.14,0),
(NULL,876.59,0),
(6735,234.0,3);

