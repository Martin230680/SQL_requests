/*Сгруппируйте данные в таблице users по полу и получите количество мужчин и женщин.
В первой колонке выведите пол, а во второй количество. Имя второй колонки — members.*/

SELECT sex, COUNT(*) AS members
FROM users12
GROUP BY sex;

/*Сгруппируйте данные в таблице users по возрасту и получите количество клиентов каждого возраста.
В первом столбце выборки выведете возраст, а во втором количество. Имя второго столбца — clients.
Данные отсортируйте по возрасту в порядке убывания.*/

SELECT age, COUNT(*) AS `clients`
FROM users12
GROUP BY age
ORDER BY age DESC; 

/*В таблице products хранятся товары в разных категориях. За категории отвечает столбец category_id, 
который хранит номер категории в другой таблице. Сгруппируйте данные по категориям и получите среднюю 
стоимость товаров в каждой из них. В первой колонке итоговой таблицы выведите категорию, а в во втором 
среднюю цену округленную до двух знаков после точки. Имя второго столбца — avg_price.
Учитывайте только товары, которые есть в наличии. Отсортируйте результаты по цене.
*/


SELECT category_id, 
round(AVG(price),2) AS avg_price
FROM products10
WHERE `count`>0
GROUP by category_id
ORDER BY avg_price;

/*
Сгруппируйте данные в таблице orders по году и получите сумму заказов за каждый год. 
Данные должны быть отсортированы в хронологическом порядке по году. В первом столбце итоговой таблицы 
выведете год, а во втором сумму.
Имя первого столбца — year, а второго — income. Учитывайте только выполненные заказы.
*/

SELECT YEAR(`date`) AS `year`,
SUM(amount) AS income
FROM `order6`
GROUP BY YEAR(`date`)
ORDER BY `year`;

/*
Сгруппируйте данные в таблице orders по году и месяцу, а затем получите сумму и количество 
заказов в каждом месяце. Данные должны быть отсортированы в хронологическом порядке по году и месяцу.
В первом столбце итоговой таблицы выведете год, во втором — номер месяца, в третьем — сумму, 
а в четвертом — количество заказов. Имена столбцов (по порядку): year, month, income, orders. 
Учитывайте только завершенные заказы.*/

SELECT YEAR(`date`) AS YEAR,
MONTH(`date`) AS `month`,
SUM(amount) AS income,
COUNT(*) AS `orders`
FROM `order6`
GROUP BY YEAR(`date`),
MONTH(`date`);

/*В таблице products содержатся данные о товарах с привязками к категориям (category_id).
Получите id категорий и количество товаров на складе для каждой из категорий.
Выведите только категории в которых есть товары.
Данные отсортируйте по количеству товаров, а после по id категории.
В итоговой таблице должно быть два столбца: category_id и products.
*/

SELECT category_id,
COUNT(*) AS `products`
FROM products10
WHERE `count`>0
GROUP BY category_id
ORDER BY `products`,category_id;
/*
В таблице deals содержится список сделок. Чтобы компания нормально 
функционировала она должна совершать сделок на 300 000 рублей в месяц. 
Но не во все месяцы это получается.
Получите список месяцев, в которых не удалось преодолеть порог в 300 тыс. 
Итоговая таблица должна состоять из трех столбцов: year — год, MONTH — номер месяца, 
amount — сумма сделок.
Данные отсортируйте сперва по году, а затем по месяцу.*/

SELECT YEAR(`date`) AS `year`, 
MONTH(`date`) AS `month`, 
SUM(amount) AS amount
FROM deals
GROUP BY YEAR(`date`),
MONTH(`date`)
HAVING amount <300000;
/*
В таблице bus_logs хранятся данные о прибытии автобусов на остановки.
В поле diff содержится разница в секундах относительно контрольного времени прибытия.
Положительные значения говорят о том, что автобус прибыл рано, отрицательные, о том, что он опоздал, 
0 – приехал вовремя.
Получите список водителей, которые в среднем опаздывают или опережают график на 10 секунд и более.
Итоговая таблица должна состоять из двух колонок: driver_id с номером водителя и avg_diff со средним 
отклонением. Среднее отклонение следует округлить до целого числа.*/

SELECT driver_id, CEILING (AVG(diff)) AS avg_diff
FROM bus_logs
GROUP BY driver_id
HAVING avg_diff > 10 OR avg_diff < -10;

/*В таблице deals содержится список сделок. Получите из таблицы следующие данные:
user_id — идентификатор пользователя;
deals — количество сделок сотрудника
sum_amount — сумма платежей по сделкам;
max_amount — максимальный платеж.
Учитывайте только закрытые сделки. Информацию выводите только для тех сотрудников, 
которые закрыли 3 и более сделок*/

SELECT user_id , COUNT(*) AS deals, SUM(amount) AS sum_amount, MAX(amount) AS max_amount
FROM deals1
WHERE `status`='closed'
GROUP BY user_id
HAVING deals >=3;


