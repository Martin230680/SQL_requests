/*CREATE TABLE marks(
id INT,
`name` VARCHAR(50)
);
INSERT INTO marks (id,`name`)
VALUES
(1,'Lada'),
(2,'Toyota'),
(3,'Peugeot'),
(4,'Ford'),
(5,'Mazda'),
(6,'Nissan'),
(7,'BMW'),
(8,'Audi'),
(9,'Mercedes'),
(10,'Honda');
*/
/*DROP TABLE if EXISTS models;*/
/*
CREATE table models(
id	INT,
mark_id INT,
`name` VARCHAR(50)
);
INSERT INTO  models(id, mark_id,`name`)
VALUES
(1,	1,'	Kalina'),
(2	,2	,'Prius'),
(3	,3	,'307'),
(4	,4	,'Fiesta'),
(5	,4	,'Mondeo'),
(6,	5,'	Demio'),
(7	,2	,'Land Cruiser'),
(8	,4	,'Focus'),
(9,	6,'	Juke'),
(10,	7,'	X5'),
(11,	8,'	TT'),
(12,	4,'	Kuga'),
(13,	6,'	Patrol'),
(14,	9,'	GlS');
/*
/*DROP TABLE if EXISTS cars3;*/
/*CREATE TABLE cars3(
id	INT,
model_id	INT,
color	VARCHAR(50),
price INT
);

INSERT INTO cars3(id,model_id,color,price)
VALUES

(1,	1,'	баклажан',	180000),
(2,	2,'	зеленый',	780000),
(3,	3,'	черный',	230000),
(4,	4,'	серебристый	',450000),
(5,	5,'	зеленый',	670000),
(6,	6,'	желтый',	220000),
(7,	7,'	черный',	2400000),
(8,	8,'	зеленый',	369000),
(9,	9,'	синий',	560000),
(10,	8,'	черный',	610000),
(11,	10,'	желтый',	3400000),
(12,	11,'	серебристый	',780000),
(13,	12,'	красный',	478000),
(14,	5,'	желтый',	350000),
(15,	13,'	белый	',2790000);
/*
/*
База данных автосалона содержит 3 таблицы: marks, models и cars.
Таблица models связана с marks через поле mark_id, а таблица cars с 
models через поле model_id. То есть cars напрямую не связана с marks, 
однако эту связь можно проследить через models.

Получите все автомобили салона с указанием модели и марки. 
Выведите следующие поля: id автомобиля, марку автомобиля (поле mark),
 модель автомобиля (поле model) и его цену. Данные отсортируйте по цене в 
обратном порядке.*/

SELECT c.id, mr.name AS mark, ml.name AS model, c.price
FROM cars3 AS c
JOIN models AS ml ON ml.id = c.model_id
JOIN marks AS mr ON mr.id = ml.mark_id
ORDER BY price DESC;

/*База данных автосалона содержит 3 таблицы: marks, models и cars.
Получите все марки представленные в салоне, а также суммарную стоимость автомобилей каждой марки. Выведите 2 колонки:
mark — название марки;
sum — стоимость всех автомобилей этой марки.
Данные отсортируйте по названию марки.*/

SELECT mr.name AS mark, sum(c.price) AS sum
FROM cars3 AS c
JOIN models AS ml ON ml.id = c.model_id
JOIN marks AS mr ON mr.id = ml.mark_id
GROUP BY mr.name
ORDER BY mr.name;
