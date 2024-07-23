/*В таблице artists представлены исполнители, а в таблице genres — жанры 
в которых они играют.
Получите названия всех жанров и количество исполнителей в каждом жанре.
Жанры выведите в поле genres, а количество исполнителей в artists.
Отсортируйте данные по названию жанра.*/

SELECT g1.`name` AS genres, COUNT(*) AS artists
FROM genres1 AS g1
JOIN artists1 AS a1
ON g1.id = a1.genre_id
GROUP BY g1.`name`
ORDER BY g1.`name`;