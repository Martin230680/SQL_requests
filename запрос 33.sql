/*Разработчик создал таблицу passports для хранения паспортов с помощью следующего запроса:
CREATE TABLE passports (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    series VARCHAR(4) NOT NULL,
    number VARCHAR(6) NOT NULL,
    state ENUM('active','expired') NOT NULL DEFAULT 'active',
    UNIQUE KEY series (series),
    UNIQUE KEY number (number)
)
В процессе эксплуатации базы данных выяснилось, что в таблицу нельзя добавить две записи с одинаковой серией или 
с одинаковым номером паспорта. Хотя планировали, чтобы уникальность была только для совместных данных в series и number.
Удалите неправильные индексы и создайте индекс с именем series_number, который удовлетворяет условию выше.*/

DROP TABLE if EXISTS passports;
CREATE TABLE passports (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    series VARCHAR(4) NOT NULL,
    number VARCHAR(6) NOT NULL,
    state ENUM('active','expired') NOT NULL DEFAULT 'active',
    UNIQUE KEY series (series),
    UNIQUE KEY number (number)
);
DROP INDEX series ON passports;
DROP INDEX `number` ON passports;
CREATE UNIQUE INDEX series_number ON passports(series,`number`);