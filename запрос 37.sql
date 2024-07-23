/*
Изменить имя столбца с city_id на city_identificator и изменить структуру столбца с INT на FLOAT */

DROP TABLE if exists calendar1;
CREATE TABLE calendar1 (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city_id INT UNSIGNED NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    `date` DATETIME NOT NULL
);

ALTER TABLE calendar1
CHANGE city_id city_identificator FLOAT NOT NULL DEFAULT 0.0;