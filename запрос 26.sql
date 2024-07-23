/*Создайте таблицу passports для хранения паспортов пользователей.

id — автоинкрементальный первичный ключ.
user_id — идентификатор пользователя, беззнаковый INT, NULL запрещен.
series — серия паспорта, строка до 4 символов, NULL запрещен.
number — номер паспорта, строка до 6 символов, NULL запрещен.
state — статус паспорта. Поле выбора одного из 2 вариантов: active (активный), expired (истекший). NULL запрещен, по умолчанию active.
Создайте уникальный ключ passport по двум полям: series и number.*/

DROP TABLE if EXISTS pasports;
CREATE TABLE pasports(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
series VARCHAR(4) NOT NULL,
`number` VARCHAR(6) NOT NULL,
state ENUM ('active','expired') NOT NULL DEFAULT 'active',
UNIQUE KEY `number`(series,`number`)
);

INSERT INTO pasports(user_id, series, `number`)
VALUES (1,'9205','345706');
INSERT INTO pasports(user_id, series, `number`)
VALUES (1,'9203','345706');
INSERT INTO pasports(user_id, series, `number`)
VALUES (1,'9203','345707');