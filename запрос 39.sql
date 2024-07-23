/*Выберите из таблицы users всех пользователей, чьи фамилии начинаются на А без учета регистра.
Отсортируйте данные в алфавитном порядке по фамилии и имени.
id	first_name	last_name	age*/

SELECT * FROM users6
WHERE last_name LIKE 'А%'
ORDER BY first_name,last_name;

/*Выберите из таблицы domains имена всех доменов в зоне .ru и отсортируйте их по дате создания.*/

SELECT * FROM domains
WHERE domain LIKE '%.ru%'
ORDER BY created;