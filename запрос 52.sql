/*Получите из таблицы tasks все задачи, запланированные на будущее. Данные отсортируйте 
в хронологическом порядке по полю planned_date.*/


SELECT * FROM tasks WHERE planned_date > NOW() ORDER BY planned_date;

/*
Получите из таблицы users имена, фамилии и даты рождений пользователей, которые родились в 1994 году.
Дату следует вывести в формате ДД.ММ.ГГГГ в поле user_birthday.
Отсортируйте результаты в хронологическом порядке по полю birthday.*/

SELECT *, DATE_FORMAT (birthday,"%d.%m.%Y") AS user_birthday FROM users11 WHERE year(birthday) = 1994;

/*
Получите из таблицы visits все записи с 12:00:00 до 12:59:59 (включительно) за 22 июня 2017 года.
Отсортируйте данные в обратном хронологическом порядке (свежие даты сверху).*/

SELECT * FROM visits WHERE (TIME(`date`)>='12:00:00' and TIME(`date`)<='12:59:59') AND Date(`date`)='2017-06-22';

/*Данные о записях пациентов к врачу хранятся в таблице calendar.
Перенесите на 1,5 часа вперед все записи после 13 часов дня (включительно) за 14 мая 2017 года.*/
/* первый вариант просто через селект SELECT *, visit_date + INTERVAL 1 HOUR + interval 30 minute  AS new_visit_date from calendar2 WHERE Date(`visit_date`)='2017-05-14';*/
/*второй вариант с добавлением столбца*/
ALTER TABLE calendar2
DROP COLUMN new_visit_date;
ALTER TABLE calendar2 ADD COLUMN new_visit_date DATETIME NULL DEFAULT NULL;
UPDATE calendar2 SET new_visit_date = visit_date + INTERVAL 1 HOUR + interval 30 minute  where Date(`visit_date`)='2017-05-14';
UPDATE calendar2 SET new_visit_date = visit_date where Date(`visit_date`)!='2017-05-14';
SELECT * FROM calendar2;

/*В таблице visits даты хранятся в часовом поясе по Гринвичу (GMT).
Выведите id посетителей и даты их визита в часовом поясе Москвы ("Europe/Moscow").
Отсортируйте вывод в хронологическом порядке.
Дату следует вывести в формате ДД.ММ.ГГГГ ЧЧ:ММ в столбце visit_date*/

SELECT id,`date`,DATE_FORMAT(`date`+ INTERVAL 3 HOUR, "%d.%m.%Y %H:%i") AS visit_date FROM visits;

/*В таблице drivers хранятся данные о гонщиках спортивного клуба. Выведите фамилию, имя и дни рождения гонщиков, 
допущенных к соревнованиям, в соответствии с условиями:
    1. Допускаются только совершеннолетние мужчины (тем кому исполнилось 18 лет)..
    2. Соревнования проходят 8 августа 2018 года.

Отсортируйте данные в алфавитном порядке по фамилии и имени.

Примите во внимание факт, что по 191 статье гражданского кодекса, 
совершеннолетие наступает не в день рождения, а на следующий за ним день.
*/
SELECT last_name,first_name,birthday,birthday AS drivers FROM drivers WHERE birthday < NOW() - interval 18 YEAR - INTERVAL 1 DAY  ORDER BY last_name,first_name ;
/*
Получите из таблицы drivers всех гонщиков, которые родились в выходные дни.
Отсортируйте данные по полю birthday в обратном хронологическом порядке.*/

SELECT *,DAYNAME(birthday) AS week_day FROM drivers WHERE DAYNAME(birthday) = 'Sunday' OR DAYNAME(birthday) = 'Saturday' ORDER BY birthday ;

/*Получите из таблицы payments последние 5 платежей, которые произошли в марте 2017 года.
Выведете номер платежа, id пользователя, сумму и дату в формате ДД.ММ.ГГГГ ЧЧ:ММ.
не забываем, что date_format возвращает данные не в формате даты, а как символы, чтобы избежать сортировки по правилам строк
и оставить сортировку по правилам даты, нужно в order by прописать обращение к исходному столбцу таблицы, через точку 
payments.data или переименовывать поле дата через AS , но сортировку делать по исходному полю date таблицы. 

*/
SELECT id, user_id, amount, DATE_FORMAT(`date`,"%d.%m.%Y %H:%i") AS `date` from payments WHERE MONTH(`date`)=3 AND year(`date`)=2017 ORDER BY payments.date DESC LIMIT 5;
