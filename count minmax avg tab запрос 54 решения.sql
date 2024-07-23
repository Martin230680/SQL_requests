/*Получите из таблицы users12 количество женщин возрастом до 30 лет.
Данные выведите в колонке women.
*/
SELECT count(sex) as women FROM users12 WHERE sex = 'w' AND age <=30;
/*
Посчитайте сумму выполненных заказов за январь 2015 года.
Заказ считается выполненным, если у него стоит статус «success».
Результат выведите в колонке с именем income.*/


SELECT SUM(amount) as income  from order6 WHERE YEAR(`date`)=2015 AND MONTH(`date`)=1 AND STATUS='success';

/*Получите стоимость самого дорогого отмененного заказа.
Заказ считается отмененным, если у него стоит статус «cancelled».
Результат выведите в колонке с именем max_losses.*/

SELECT MAX(amount) AS max_losses FROM ORDER6 WHERE STATUS='cancelled';

/*
Получите средний чек магазина за 2015 год.
Средний чек — это средняя стоимость выполненных (success) заказов.
Результат округлите до 2 знаков после точки и выведите в колонке с именем avg_check.
*/

SELECT round(avg(amount),2) as avg_check  from order6 WHERE YEAR(`date`)=2015 AND STATUS='success';

/*Получите из таблицы users12 средний возраст и количество всех мужчин.
Возраст округлите до ближайшего нижнего значения и выведите в колонке age, а количество в count.
*/
SELECT round(avg(age),2) AS `count` from USERs12 WHERE sex='m';

/*Получите дату первого (минимальную дату) отмененного заказа.
Значение выведите в формате ДД.ММ.ГГГГ в колонке date.
*/
SELECT date_format(MIN(`date`), "%d.%m.%Y") AS `date`FROM `order6` WHERE STATUS='cancelled';
/*
В таблице users есть поле activity_date, которое хранит дату и время последней активности пользователя на сайте. 
Посчитайте сколько пользователей находилось на сайте 8 апреля 2018 года в 12:36:17.
Данные выведите в колонке с именем users.

Считайте, что пользователь находился на сайте, если он совершал какие-то действия в последние 5 минут до контрольного времени.*/

SELECT count(activity_date) AS `users` FROM users13 WHERE YEAR(activity_date)=2018 and MONTH(activity_date)=4 AND  DAY(activity_date)=8 AND 
TIME(activity_date)<='12:36:17';

/*В таблице transactions хранится информация по движению денег по счету компании.
Поле amount отвечает за сумму, а поле direction за направление платежа: in — входящий платеж, out — исходящий.

Входящие платежи облагаются налогом в 6%, за исключением тех, у которых стоит пометка no_tax = TRUE.
Посчитайте какой налог должна заплатить организация за 1 квартал 2017 года.
Результат округлите вверх до ближайшего целого и выведите в колонке tax.*/

SELECT CEILING((SUM(amount*0.06))) AS tax FROM transactions 
WHERE `date`>'2016-12-31 23:59:59' AND `date`<='2017-03-31 23:59:59' AND no_tax=TRUE AND direction='in';

