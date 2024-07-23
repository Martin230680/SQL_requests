/*В таблице users хранятся данные по всем пользователям сайта поликлиники: 
клиентам и докторам. Доктора отмечены в поле is_doctor. Создайте таблицу 
calendar для хранения записей пациентов к врачам. Таблица должна иметь 4 поля:
id — идентификатор записи.
doctor_id — внешний ключ на колонку id в таблице users, NULL запрещен.
client_id — также внешний ключ на колонку id в таблице users, NULL запрещен.
visit_date — дата и время визита, NULL запрещен.
Таблица users была создана с помощью запроса:

CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    is_doctor BOOLEAN NULL
);*/

/*DROP TABLE if EXISTS users22;
DROP TABLE if EXISTS calendar4;*/

CREATE TABLE users22 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    is_doctor BOOLEAN NULL
);

CREATE TABLE calendar4(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
doctor_id INT UNSIGNED NOT NULL,
client_id INT UNSIGNED NOT NULL,
visit_date DATETIME NOT NULL,
FOREIGN KEY (doctor_id)
REFERENCES users22(id),
FOREIGN KEY (client_id)
REFERENCES users22(id)
);