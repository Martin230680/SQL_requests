/*Получите все страны и города из таблиц countries и cities.
Свяжите города со странами, в которых они находятся.
Выведите 2 столбца:
    1. country — название страны;
    2. city — название города.

Данные отсортируйте сперва по названию страны, а затем по названию города.*/

(SELECT c.name AS `страна`, ct.name AS `город`
FROM cities AS ct
LEFT JOIN countries AS c
ON c.id = ct.country
UNION 
SELECT c.name AS `страна`, ct.name AS `город`
FROM cities AS ct
RIGHT JOIN countries AS c
ON c.id = ct.country)

;