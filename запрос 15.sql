/*Создайте таблицу users для хранения списка пользователей сайта:
id — идентификатор, целое положительное.
first_name — имя, строка до 20 символов. NULL запрещен.
last_name — фамилия, строка до 20 символов. NULL запрещен.
patronymic — отчество, строка до 20 символов. NULL запрещен, по умолчанию пустая строка.
is_active — отметка об активности пользователя. Логическое поле, по умолчанию TRUE.
is_superuser — отметка администратора. Логическое поле, по умолчанию FALSE.
Добавьте 3 записи так, чтобы получалась таблица ниже:

id	first_name	last_name	patronymic	is_active	is_superuser
1	Дмитрий	Иванов		TRUE	FALSE
2	Анатолий	Белый	Сергеевич	TRUE	TRUE
3	Андрей	Крючков		FALSE	FALSE

*/
DROP TABLE if EXISTS users3;
CREATE TABLE users3(
id INT UNSIGNED,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
patronymic VARCHAR(20) NOT NULL DEFAULT "",
is_active BOOL DEFAULT TRUE,
is_superuser BOOL DEFAULT FALSE
);

INSERT INTO users3(id,first_name,last_name,patronymic,is_active,is_superuser)
VALUES
(1,'Дмитрий','Иванов','',TRUE,FALSE),
(2,'Анатолий','Белый','Сергеевич',TRUE,true),
(3,'Андрей','Крючков','',false,FALSE);
