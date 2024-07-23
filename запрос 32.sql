/*В базе данных есть таблица calendar, в которой хранится информация о событиях в городах. 
Самые популярные запросы к этой таблице затрагивают одновременно два поля: city_id и DATE. 
Добавьте индекс с именем base_query для ускорения популярных запросов.*/
DROP TABLE if exists calendar;
CREATE TABLE calendar (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city_id INT UNSIGNED NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    `date` DATETIME NOT NULL
);

CREATE INDEX base_query ON calendar(city_id,`date`);