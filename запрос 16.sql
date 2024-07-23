/*Создайте таблицу orders для хранения списка заказов:
id — идентификатор, целое положительное.
user_id — идентификатор пользователя, который оформил заказ. Целое положительное, NULL запрещен.
amount — стоимость заказа. Целое положительное число не более 1 млн. NULL запрещен, по умолчанию 0.
created — дата и время создания заказа. NULL запрещен.
state — статус заказа. Выбор из new, cancelled, in_progress, delivered, completed. Можно выбрать 
только один вариант. NULL запрещен. По умолчанию должен стоять NEW.

id	user_id	amount	created	state
1	56	5400	2018-02-01 17:46:59	new
2	90	249	2018-02-01 19:13:04	new
3	78	2200	2018-02-01 22:43:09	new*/

DROP TABLE if EXISTS orders1;
CREATE TABLE orders1(
id INT UNSIGNED,
user_id INT UNSIGNED NOT NULL,
amount INT (7) UNSIGNED NOT NULL DEFAULT 0,
created DATETIME NOT NULL,
state ENUM ('new','cancelled','in_progress','delivered') NOT NULL DEFAULT 'new'
);

INSERT INTO orders1(id, user_id, amount, created)
VALUES 
(1,56,5400,'2018-02-01 17:46:59'),
(1,90,249,'2018-02-01 19:13:04'),
(1,78,2200,'2018-02-01 22:43:09');