DROP TABLE if EXISTS users2;
CREATE TABLE users2(
id INT UNSIGNED NOT NULL,
email VARCHAR (100) NOT NULL
);

INSERT INTO users2(id, email)
VALUES
(1,'user1@domain.com'),
(2,'USER2@domain.com'),
(3,'USER3@domain.com'),
(4,'USER4@domain.com');
