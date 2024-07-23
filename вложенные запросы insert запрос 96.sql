/*
drop TABLE if exists advs1;

CREATE TABLE advs1(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INTEGER UNSIGNED,
category_id INTEGER UNSIGNED,
`date` DATETIME,
`text` TEXT,
closed INTEGER UNSIGNED
);

INSERT INTO advs1 (user_id,	category_id,	DATE,	TEXT,	closed)
VALUES 
(45,6,'2018-02-14 22:51:07','Продам видеокарту Asus',	0),
(982,55,'2018-02-14 23:31:11','Куплю жилетку меховую',0),
(675,14,'2018-02-14 23:32:43','Продам мебель на кухню',1),
(45,6,'2018-02-15 00:12:45','Продам ПК на базе Intel',0),
(441,6,'2018-02-15 01:45:05','Продам принтер струйный',0),
(45,6,'2018-02-14 22:51:07','Продам компьютер iMac',0),
(1343,55,'2018-02-14 23:31:11','Куплю шубу норковую',1),
(675,14,'2018-02-14 23:32:43','Продам шкаф из дуба',0),
(45,6,'2018-02-15 00:12:45','Продам ноутбук Asus',	0),
(874,6,'2018-02-15 01:45:05','Продам ноутбук Sony',1),
(145,12,'2018-02-15 06:00:04','Продам детское кресло',1);
*/
/*DROP TABLE if exists closed_advs1;*/

/*
CREATE TABLE closed_advs1(
id	INTEGER UNSIGNED,
user_id	INTEGER UNSIGNED,
category_id	INTEGER UNSIGNED,
`text`TEXT,
`date` DATETIME 
);
INSERT INTO closed_advs1(id,user_id,category_id,`text`,`date`)
VALUES 
(3,675,14,'Продам мебель на кухню','2018-02-14 23:32:43'),
(7,1343,55,'Куплю шубу норковую','2018-02-14 23:31:11');
*/
/*
В базе данных есть две таблицы для хранения объявлений: advs и closed_advs, 
в первой хранятся все объявления, а во второй только неактивные.
Раз в день объявления из таблицы advs копируются в closed_advs — некоторые объявления уже скопированы.
Скопируйте оставшиеся объявления в таблицу closed_advs.*/

INSERT ignore INTO closed_advs1
(SELECT id,user_id,category_id,`text`,`date` FROM advs1 WHERE closed =1);

DROP TABLE if EXISTS cached_cars;
CREATE TABLE cached_cars(
id	INTEGER UNSIGNED,
car VARCHAR(50),	
price INTEGER UNSIGNED
);
INSERT INTO cached_cars(id,	car,	price)
VALUES
(1,'Lada Kalina, баклажан',180000),
(2,'Toyota Prius, зеленый',770000),
(3,'Pegeot 307, черный',230000);

/*
База данных автосалона содержит 4 таблицы: marks, models, cars и cached_cars.
В marks и models хранятся данные о марках и моделях автомобилей, а в cars сами автомобили.
Для ускорения доступа к данным в базу добавили промежуточную таблицу cached_cars, которая хранит 
уже готовые строки в виде «марка модель, цвет», а также текущую цену автомобиля.
Заполните таблицу cached_cars свежими данными. Обратите внимание, что некоторые данные в 
таблице cached_cars уже устарели и их нужно обновить.*/

replace INTO cached_cars
(SELECT c3.id,CONCAT (mk.name,',',ml.name), c3.price FROM cars3 AS c3
JOIN models AS ml ON ml.id=c3.model_id
JOIN marks AS mk ON mk.id=ml.mark_id
);


SELECT * FROM cached_cars;


