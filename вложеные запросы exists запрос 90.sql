/*Выведите id и названия категорий, в которых есть товары.
Данные отсортируйте по имени категории.
Используйте конструкцию EXISTS.*/


SELECT id, `name` FROM categories8 WHERE EXISTS 
(SELECT * FROM products20 WHERE
 products20.category =categories8.id AND `count`<> 0);
 
 /*
 Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
Получите список всех сотрудников, которые не выполняют ни одной роли.
Выведите id, имена и фамилии таких сотрудников. Данные отсортируйте по id.
Используйте вложенные запросы.*/

SELECT first_name, last_name from users25 WHERE not EXISTS (
SELECT * FROM users_roles WHERE 
users25.id = users_roles.user_id)
ORDER BY id;