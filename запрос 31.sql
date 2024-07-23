/*Программисты проанализировали производительность запросов к таблице products и нашли медленный запрос:

SELECT id, category_id, name FROM products WHERE category_id = NN;
где NN – это номер категории. Добавьте к таблице нужные индексы, чтобы запрос выполнялся быстрее. 
Имя индекса должно совпадать с именем столбца.*/

CREATE INDEX category_idindex on products2(category_id); 