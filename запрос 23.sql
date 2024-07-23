/*Измените имя пользователя с первичным ключом 7 с «Иван» на «Дмитрий».
id	first_name	last_name	birthday
1	Дмитрий	Петров	2000-03-14
2	Ольга	Антонова	1999-12-01
3	Сергей	Васильев	2002-02-20
4	Иван	Степаниденко	2004-03-07
5	Алена	Шикова	1999-98-17
6	Василина	Парамнова	2000-10-10
7	Иван	Пузаков	2002-02-20
8	Алина	Антонова	2002-01-01
*/

DROP TABLE if EXISTS users5;
CREATE TABLE users5(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT null,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
birthday DATEtime DEFAULT CURRENT_TIMESTAMP 
);
INSERT INTO users5(first_name,last_name,birthday)
VALUES 
('Дмитрий','Петров','2000-03-14 00-00-00'),
('Ольга','Антонова','1999-12-01 00-00-00'),
('Сергей','Васильев','2002-02-20 00-00-00'),
('Иван','Степаниденко','2004-03-07 00-00-00'),
('Алена','Шикова','1999-03-17 00-00-00'),
('Василина','Парамнова','2000-10-10 00-00-00');

INSERT INTO users5(first_name,last_name)
VALUES 
('Иван','Пузаков'),
('Алина','Антонова');

UPDATE users5 SET
first_name = 'Дмирий'
WHERE id =7 AND first_name='Иван';

SELECT * FROM users5;

