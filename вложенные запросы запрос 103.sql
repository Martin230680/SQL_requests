/*Используя вложенные запросы, выведите все уникальные почтовые домены верхнего
уровня длиной в три символа. таблица user*/
SELECT * FROM 
(SELECT substring_index(email,'.', -1) AS domen FROM USER
WHERE CHAR_LENGTH(substring_index(email,'.', -1))=3) AS tb
GROUP BY domen;

/*второй вариант*/
SELECT DISTINCT `domain`
FROM (SELECT RePLACE(SUBSTR(`email`, -3),'.','') `domain`FROM `user`) t
WHERE CHAR_LENGTH(`domain`) = 3;

/*Используя вложенные запросы, выведите для каждого товара, который находится 
в категории со средним количеством товаров меньше 185:
ID категории,
наименование товара,
количество товара,
стоимость такого товара.*/
SELECT* FROM good;

SELECT id, NAME, COUNT, price FROM good
WHERE category_id IN(
select category_id FROM good GROUP BY category_id
HAVING AVG(`count`)<185);
