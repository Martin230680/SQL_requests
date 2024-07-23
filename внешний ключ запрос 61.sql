/*В базе данных есть таблица users, которая была создана с помощью следующего запроса:
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    date_joined DATETIME NOT NULL
)
Создайте таблицу users_data, в которой первичный ключ id будет также внешним 
ключом с ссылкой на таблицу users. Помимо первичного ключа, таблица должна содержать
 поле bio типа TEXT.*/
 
 CREATE TABLE users19 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    date_joined DATETIME NOT NULL
);

CREATE TABLE users_data (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    bio TEXT,
    FOREIgn KEY (id) REFERENCES users19(id) ON DELETE CASCADE ON update CASCADE
);