/*
Создайте таблицу passports со следующими полями:

series — символьного типа длиной до 4 символов. NULL запрещен.
number — символьного типа длиной до 6 символов. NULL запрещен.
user_id — беззнаковый INT. NULL запрещен.
date_issue — дата типа DATE
Создайте первичный ключ по двум полям: series и number.

series	number	user_id	date_issue
3206	147345	15	2006-08-12
3216	147345	234	2016-09-23
2405	147345	1	2015-01-07
5411	147345	15	2008-03-03
*/

DROP TABLE if EXISTS passports;
CREATE TABLE passports(
series VARCHAR(4) NOT NULL,
`namber` VARCHAR(6) NOT NULL,
user_id INT UNSIGNED NOT NULL,
date_issue DATE,
PRIMARY KEY (series, `namber`)
);

INSERT INTO passports(series, `namber`, user_id, date_issue)
VALUES 
(3206,147345,15,'2006-08-12'),
(3216,147345,234,'2016-09-23'),
(2405,147345,1,'2015-01-07'),
(5411,147345,15,'2008-03-03');