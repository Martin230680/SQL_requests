/*В базе данных есть две таблицы: genres и artists. В первой находится список 
жанров, а во второй — исполнители. Сейчас таблицы никак не связаны между собой.
Создайте в таблице artists новое поле genre_id и сделайте его внешним ключом на 
поле id в таблице genres.
Исходные запросы для создания таблиц были такие:
CREATE TABLE genres (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
CREATE TABLE artists (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    is_group BOOLEAN NULL
);
Учтите, что обе таблицы уже заполнены данными.*/

CREATE TABLE genres (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);

CREATE TABLE artists (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    is_group BOOLEAN NULL
);

ALTER TABLE artists 
ADD COLUMN genre_id INT UNSIGNED NULL;

ALTER TABLE artists
ADD FOREIGN KEY(genre_id)
REFERENCES genres(id);



