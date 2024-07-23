/*Создайте таблицу orders для хранения списка заказов:

id — идентификатор, целое положительное.
user_id — идентификатор пользователя, который оформил заказ. Целое положительное, NULL запрещен.
amount — стоимость заказа. Целое положительное число не более 1 млн. NULL запрещен, по умолчанию 0.
created — дата и время создания заказа. NULL запрещен.
state — статус заказа. Выбор из new, cancelled, in_progress, delivered, completed. Можно выбрать только один вариант. NULL запрещен. По умолчанию должен стоять new.
Добавьте 3 записи так, чтобы получалась таблица ниже:


id	user_id	amount	created	state
1	56	5400	2018-02-01 17:46:59	new
2	90	249	2018-02-01 19:13:04	new
3	78	2200	2018-02-01 22:43:09	new

*/

DROP TABLE if EXISTS orders;
CREATE TABLE orders(
id INT UNSIGNED,
user_id INT UNSIGNED NOT NULL,
amount DECIMAL (7,2) NOT NULL,
created DATETIME NOT NULL,
state ENUM ('new', 'cancelled', 'in_progress', 'delivered', 'completed')
);

INSERT INTO orders(id, user_id, amount, created, state)
VALUES
(1,56,5400,'2018-02-01 17:46:59','new'),
(2,90,249,'2018-02-01 19:13:04','new'),
(3,78,2200,'2018-02-01 22:43:09','new');