/*В таблице artists представлены исполнители, а в таблице genres — жанры
 в которых они играют.
Получите названия всех групп и жанры, в которых они играют.
Жанры выведите в поле genre
Отсортируйте данные по имени жанра, а затем по названию группы.*/
/*
CREATE TABLE artists1(
id INT,
`name` VARCHAR(50),
genre_id INT,
is_group BOOL
);
INSERT INTO artists1(id,`name`,`genre_id`,is_group)
VALUES
(1,'Skrillex',5,FALSE),
(2,'Eminem',3,False),
(3,'Metallica',6,True),
(4,'Linkin Park',1,True),
(5,'Hardwell',5,False),
(6,'50 Cent',3,False),
(7,'Slipknot',6,True),
(8,'Green Day',1,True),
(9,'Daft punk',5,	True),
(10,'Snoop Dogg',3,False),
(11,'Korn',	6,	True),
(12,'Blink 182',1,True),
(13,'Maroon 5',2,TRUE);
*/
/*
CREATE TABLE genres1(
id INT,
`name` VARCHAR(50)
);
INSERT INTO genres1( id, `name`)
VALUES 
(1,'Rock'),
(2,'Pop'),
(3,'Rap'),
(4,'Jazz'),
(5,'Electronic'),
(6,'Metal');
*/

SELECT a.name AS `name`, g.name AS genre
FROM artists1 AS a
JOIN genres1 AS g ON g.id = a.genre_id
ORDER BY genre, `name`;
/*
Получите id и названия жанров, а также количество исполнителей в них.
Количество исполнителей выводите в поле artists
Жанры, в которых нет исполнителей, выводить не надо.
Данные отсортируйте сперва по количеству исполнителей в обратном порядке, а 
потом по названию жанра.*/

SELECT g.id, g.name AS genre, a.is_group AS artists
FROM genres1 AS g
JOIN artists1 AS a ON a.genre_id = g.id
WHERE a.is_group IS true
ORDER BY genre;

