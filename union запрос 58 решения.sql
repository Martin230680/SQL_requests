/*Объедините с помощью UNION таблицы bank_transactions и cashbox_transactions.*/

SELECT * from bank_transactions
UNION 
SELECT * From cashbox_transactions;

/*Получите с помощью UNION из таблиц bank_transactions и cashbox_transactions
данные обо всех транзакциях клиента 56. Выведите три столбца:
date — дату транзакции в формате ДД.ММ.ГГ;
amount — сумму транзакции;
payment_type — вид платежа: «bank» для банковских транзакций и «cash» для наличности.*/

SELECT DATE_FORMAT(`date`,"%d.%m.%Y") AS `date` ,amount, 'bank' AS payment_type FROM bank_transactions
WHERE `client_id`=56
UNION
SELECT DATE_FORMAT(`date`,"%d.%m.%Y"),amount, 'cash' From cashbox_transactions
WHERE `client_id`=56;

/*После слияния двух компаний, IT отделу поручили объединение баз данных. Напишите SELECT-запрос, 
который объединяет users и members в единую таблицу со следующими столбцами:

id — идентификатор пользователя. Так как идентификаторы пользователей в таблицах одинаковые, 
то примените к ним следующую формулу id * 10 + N, где N – равен одному для таблицы users и двум для members.
first_name — имя пользователя. Используйте оригинальное значение из таблицы users и извлеките имя 
из поля name таблицы members.
last_name — фамилия пользователя. Используйте оригинальное значение из таблицы users и извлеките фамилию 
из поля name таблицы members.
age — возраст пользователя. Используйте оригинальное значение из таблицы users и NULL для данных из members.
birthday — день рождения пользователя. Используйте оригинальное значение из таблицы members и NULL для 
данных из users.
sex — пол пользователя.*/

SELECT id*10+1 AS id, first_name, last_name, age, NULL AS birthday,sex FROM users14
UNION
SELECT id*10+2 AS id ,SUBSTRING_INDEX(`name`,' ',1) AS first_name ,SUBSTRING_INDEX(`name`,' ',-1) AS last_name, NULL,
birthday, sex FROM members;

/*
Каждый регион ведет базу автомобилей и их номеров в своей собственной уникальной базе.
Ваша задача — объединить таблицы из разных регионов так, чтобы получилась таблица 
со следующий структурой:
number — номер автомобиля в формате а111аа.
region — регион регистрации автомобиля (целое число).
mark — марка автомобиля.
model — модель автомобиля.
Объединять таблицы следует в том порядке, в котором они пронумерованы.*/

/* в последней талице заложены в назаниях лишние пробелы, trim применяется */

SELECT Substring(`number`,1,6) AS `number`, NULL AS region, mark, model FROM cars2
UNION 
SELECT Substring(`number`,1,6), NULL, mark, model FROM region39
UNION 
SELECT Substring(`number`,1,6), region, mark, model FROM avto
UNION 
SELECT Substring(trim(`number`),1,6), NULL, SUBSTRING_index(trim(car),' ',1),SUBSTRING_index(trim(car),' ',-1)FROM autos;


/*В целях оптимизации производительности в базе данных есть две таблицы для хранения 
объявлений: advs и closed_advs, в первой хранятся активные объявления, а во второй неактивные.
Основная часть запросов приходится на advs, но когда пользователь заходит в 
личный кабинет, то видит все свои объявления из обеих таблиц.
Объедините обе таблицы с помощью UNION и получите данные для пользователя с идентификатором 45. 
Выведите колонки id, category_id, date, text, а также STATUS (статус объявления). Для открытых 
объявлений в поле status укажите «opened» а для закрытых — «closed».
Итоговую таблицу отсортируйте по дате и id.*/
SELECT id, category_id, `date`, `text`, 'open' AS `status` FROM advs
WHERE `user_id` = 45
UNION 
SELECT id, category_id, `date`, `text`, 'closed' FROM closed_advs
WHERE `user_id` = 45
ORDER BY `date`, id;

/*Объедините с помощью UNION данные из таблиц bank_transactions, cashbox_transactions
и paypal_transactions. Выведите три столбца:
date — дату транзакции (колонку date);
amount — сумму транзакции;
pt — вид платежа: «bank» для банковских транзакций и «cash» для наличности и «paypal» 
для платежей в системе PayPal.
Итоговые данные отсортируйте по дате в обратном хронологическом порядке.*/

SELECT `date`,amount, 'bank' AS pt FROM bank_transactions
UNION 
SELECT `date`,amount, 'cash' FROM cashbox_transactions
UNION
SELECT `date`,amount, 'paypal' FROM paypal_transactions
ORDER BY `date` DESC;

/*На главной странице сайта выводится ТОП10 компьютерных игр. Чтобы вывод был
разнообразным — берут по две самых популярных игры из 5 категорий, а затем 
сортируют полученные данные по рейтингу в обратном порядке. Строки с одинаковым
рейтингом отсортируйте по id.
Получите из таблицы games данные для вывода на главную страницу сайта для
категорий: 1 - Action, 2 - RPG, 3 - Adventure, 4 - Strategy и 5 - Shooter. 
Выведите поля id, name, rating и genre, где genre — название категории.*/
(SELECT id, `name`, rating, 'Action' AS ganre FROM games 
WHERE category_id = 1 ORDER BY id DESC LIMIT 2)
UNION 
(SELECT id, `name`, rating, 'RPG' FROM games 
WHERE category_id = 2 ORDER BY id DESC LIMIT 2)
UNION 
(SELECT id, `name`, rating, 'Adventure' FROM games 
WHERE category_id = 3 ORDER BY id DESC LIMIT 2)
UNION 
(SELECT id, `name`, rating, 'Strategy' FROM games 
WHERE category_id = 4 ORDER BY id DESC LIMIT 2)
UNION 
(SELECT id, `name`, rating, 'Shooter' FROM games 
WHERE category_id = 5 ORDER BY id DESC LIMIT 2);
/*
Платежи клиентов в базе данных хранятся в трех таблицах:
    1. bank_transactions — прямые платежи на расчетный счет,
    2. cashbox_transactions — платежи наличными в кассу организации,
    3. paypal_transactions — платежи через сервис PayPal.
Получите виды платежей и суммы по каждому виду. Виды платежей выведите 
в колонке type: «bank» для банковских транзакций и «cash» для наличности и «paypal» 
для платежей в системе PayPal. Суммы платежей в колонке sum_amount.
Итоговые данные отсортируйте по сумме.*/
SELECT `type`,round(SUM(amount),2) AS sum_amount FROM 
(SELECT *,'bank' AS type FROM bank_transactions
UNION 
SELECT *,'cash' FROM cashbox_transactions
UNION 
SELECT *,'paypal' FROM paypal_transactions) `new_table`
GROUP BY `type`;

/*
Платежи клиентов в базе данных хранятся в трех таблицах:
    1. bank_transactions — прямые платежи на расчетный счет,
    2. cashbox_transactions — платежи наличными в кассу организации,
    3. paypal_transactions — платежи через сервис PayPal.

Получите суммы входящих платежей по всем таблицам с разбивкой по годам и месяцам. 
Итоговая таблица должна содержать 3 столбца: year, month, month_amount. 
Итоговые данные отсортируйте по году и месяцу.*/
SELECT YEAR(`date`) AS `year`,MONTH(`date`) AS `month`,round(SUM(amount),2) AS  month_amount FROM
(SELECT * FROM bank_transactions
UNION 
SELECT * FROM paypal_transactions
UNION 
SELECT * FROM cashbox_transactions )`new_table1`
GROUP BY YEAR(`date`), MONTH(`date`)
ORDER BY `year`, `month`;
/*
Платежи клиентов в базе данных хранятся в трех таблицах:
    1. bank_transactions — прямые платежи на расчетный счет,
    2. cashbox_transactions — платежи наличными в кассу организации,
    3. paypal_transactions — платежи через сервис PayPal.
Получите общую сумму всех платежей клиентов. Колонку с результатом назовите all_money.*/
SELECT round(SUM(amount),2) AS  all_money FROM
(SELECT * FROM bank_transactions
UNION 
SELECT * FROM paypal_transactions
UNION 
SELECT * FROM cashbox_transactions )`new_table2`;
