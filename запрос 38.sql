/*Обычно имена таблиц указывают во множественном числе, так как это более 
точно отражает их содержание. Мы случайно создали таблицу для хранения категорий с именем в единственном числе — category.
Переименуйте её в categories (категории).*/


/*DROP TABLE if EXISTS artiс;
CREATE TABLE artic(
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL, 
    text TEXT
);*/

RENAME table artic TO artics;