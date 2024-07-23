/*
DROP TABLE if EXISTS countries;
*/
/*
CREATE TABLE countries(
id INT,
`name` VARCHAR(50),
pw SET('America','Europe','Asia','Australia')
);



INSERT INTO countries (id, `name`, pw)
VALUES
(1	,'Россия','Europe,Asia'),
(2	,'Мексика','America'),
(3	,'Украина','Europe'),
(4	,'Франция',	'Europe'),
(5	,'США	','America'),
(6	,'Италия'	,'Europe'),
(7	,'Япония	','Asia'),
(8	,'Чехия','Europe'),
(9	,'Чили','America'),
(10,'	Германия'	,'Europe'),
(11,'	Канада','America'),
(12	,'Беларусь','Europe'),
(13,'	Китай'	,'Asia'),
(14,'	Казахстан','Asia'),
(15,'	Австралия','Australia'),
(16,'	Нидерланды','Europe');
*/
/*
CREATE TABLE cities(
id	INT,
NAME VARCHAR(50),	
country INT,	
population INTEGER 
);
*/


/*INSERT INTO  cities(id,	NAME,	country,	population)
VALUES
(1,'	Москва',	1,	12506468),
(2,'	Нью-Йорк',		5,	8405837),
(3,'	Минск',	12	,1974800),
(4,'	Гамбург',	10,	1803752),
(5,'	Санкт-Петербург',	1,	5351935),
(6,'	Шанхай',	13	,24632000),
(7,'	Саратов',	1,	845300),
(8,'	Берлин',	10	,3670999),
(9,'	Марсель',	4,	864323),
(10,'	Амстердам',	16,	848861),
(11,'	Торонто',	11,	2503281),
(12,'	Вашингтон',	5	,658893),
(13,'	Львов',	3,	728350),
(14,'	Прага',	8,	1267449),
(15,'	Киев',	3,	2925760);*/

/*ГОРОДА-МИЛЛИОННИКИ
Получите список городов-миллионников в Европе.
Выведите название города, название страны и население города.
Название страны выведите в поле country.
Данные отсортируйте по населению в обратном порядке (крупные города выше).
Поле pw в таблице countries представлено типом SET.*/

SELECT ct.name AS city, c.pw as country, ct.population
FROM cities AS ct
JOIN countries AS c ON ct.country= c.id
WHERE ct.population > 999999
ORDER BY ct.population DESC;



