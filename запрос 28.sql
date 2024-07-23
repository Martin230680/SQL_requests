/*Создайте таблицу orders со следующими полями:
id — автоинкрементальный первичный ключ.
user_id — идентификатор пользователя, беззнаковый INT, NULL запрещен.
state — статус заказа, строка до 8 символов. По умолчанию new. NULL запрещен.
amount — целое положительное для хранения чисел не более 1 млн. NULL запрещен. По умолчанию 0.
Создайте два обычных индекса для полей user_id и state. Имена индексов должны совпадать с именами столбцов.*/
DROP TABLE if EXISTS orders4;
CREATE TABLE orders4(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
state VARCHAR(8) NOT NULL DEFAULT 'new',
amount INT(6) UNSIGNED NOT NULL DEFAULT 0,
INDEX user_id(user_id),
INDEX state(state)
);

/*добавление индекса amount_index к таблицу orders4 для поля amount */

CREATE INDEX amount_index ON `orders4`(amount);