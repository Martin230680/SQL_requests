/*Простые индексы можно создавать не по одному полю, а сразу по нескольким. Это позволяет ускорить поиск в тех случаях, когда в запросе присутствует фильтр или сортировка сразу по нескольким полям. Например, если часто вызывается запрос вида:
SELECT * FROM products WHERE category_id = 5 AND price > 1000;
То имеет смысл создать составной индекс по полям category_id и price.
Простой составной индекс создается также как и уникальный, только без слова UNIQUE.

Создайте таблицу orders для хранения списка заказов со следующими полями:
id — автоинкрементальный первичный ключ.
user_id — идентификатор пользователя, беззнаковый INT, NULL запрещен.
city_id — идентификатор города, беззнаковый INT, NULL запрещен.
state — статус заказа. Выбор из new, cancelled, delivered, completed. Можно выбрать только один вариант. NULL запрещен. По умолчанию new.
amount — целое положительное для хранения чисел не более 1 млн. NULL запрещен. По умолчанию 0.
Самый популярный запрос к этой таблице:

SELECT * FROM orders WHERE city_id = 5 AND state = "new";
Добавьте составной индекс с именем main_search, чтобы данный запрос выполнялся максимально быстро.
Также добавьте простой индекс по полю user_id.*/

DROP TABLE if exists orders5;
CREATE TABLE orders5(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
city_id INT UNSIGNED NOT NULL,
state ENUM ('new','cancelled','delivered','completed') DEFAULT 'new',
amount INT(6) UNSIGNED NOT NULL DEFAULT 0,
KEY main_serch (city_id,state)
);