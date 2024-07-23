/*CREATE TABLE `games1` (
	`id` INT(10) AUTO_INCREMENT PRIMARY key,
	`category_id` INT(10) NULL DEFAULT NULL,
	`name` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`rating` FLOAT NULL DEFAULT NULL,
	`year` YEAR NULL DEFAULT NULL
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO games1 (	category_id,`name`,rating,`year`)
VALUES
(2,'The Witcher 3: Wild Hunt',9.61,'2015'),
(4,'Warcraft III: The Frozen Throne',9.00,'2003'),
(1,'Max Payne 2: The Fall of Max Payne',8.63	,'2003'),
(3,'The Last of Us',9.45,'2013'),
(3,'Mafia II',8.94,'2010'),
(1,'Grand Theft Auto V',9.18,'2013'),
(5,'Far Cry 3',8.67,'2012'),
(4,'Plants vs. Zombies',8.90,'2009'),
(2	,'Diablo III',9.22,'2012'),
(8,'Mortal Kombat X',8.70,'2015'),
(7,'Tetris',9.05,'1984'),
(5,'Doom',8.75,'2016'),
(2,'Mass Effect 3',9.00,'2012'),
(3,'Uncharted 4: A Thief\'s End',9.33,'2016'),
(2,'Call of Duty: Black Ops II',8.88,'2012'),
(5,'Metro: Last Light',9.25,'2013'),
(1	,'Outlast',9.00,'2013'),
(6,'Need for Speed: Most Wanted',9.08,'2005'),
(4,'Warcraft III: Reign of Chaos',9.29	,'2002'),
(3,'The Walking Dead: The Game - Season 2',9.00	,'2014'),
(3,'Portal 2',9.32,'2011');*/

/*
На главной странице сайта выводится ТОП5 компьютерных игр. Чтобы вывод был разнообразным:
Берут по две самых популярных игры из 5 категорий.
Из полученной десятки оставляют пять лучших игр.
Итоговую пятерку сортируют по рейтингу в прямом порядке.
Строки с одинаковым рейтингом отсортируйте по id.
Получите из таблицы games данные для вывода на главную страницу сайта для категорий:
1 - Action, 2 - RPG, 3 - Adventure, 4 - Strategy и 5 - Shooter. 
Выведите поля id, name, rating и genre, где genre — название категории.*/
SELECT * FROM games1;
SELECT*FROM
(SELECT * FROM 
((SELECT*FROM 
(SELECT id, category_id,`name`,rating,`year` FROM games1 WHERE category_id =1
GROUP BY id, category_id,`name`,rating,`year`) AS tb1 ORDER BY tb1.rating DESC LIMIT 2)
UNION
(SELECT*FROM 
(SELECT id, category_id,`name`,rating,`year` FROM games1 WHERE category_id =2
GROUP BY id, category_id,`name`,rating,`year`) AS tb2 ORDER BY tb2.rating DESC LIMIT 2)
UNION
(SELECT*FROM 
(SELECT id, category_id,`name`,rating,`year` FROM games1 WHERE category_id =3
GROUP BY id, category_id,`name`,rating,`year`) AS tb3 ORDER BY tb3.rating DESC LIMIT 2)
UNION
(SELECT*FROM 
(SELECT id, category_id,`name`,rating,`year` FROM games1 WHERE category_id =4
GROUP BY id, category_id,`name`,rating,`year`) AS tb4 ORDER BY tb4.rating DESC LIMIT 2)
UNION
(SELECT*FROM 
(SELECT id, category_id,`name`,rating,`year` FROM games1 WHERE category_id =5
GROUP BY id, category_id,`name`,rating,`year`) AS tb5 ORDER BY tb5.rating DESC LIMIT 2))
AS tb_all ORDER BY tb_all.rating desc LIMIT 5) AS tb_total
ORDER BY tb_total.rating, tb_total.id;


