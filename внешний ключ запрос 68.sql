/*В таблице users хранятся данные по всем пользователям сайта поликлиники: клиентам 
и докторам. Доктора отмечены в поле is_doctor.
В таблице calendar содержатся данные о времени записи (visit_date) пациентов (client_id) 
к докторам (doctor_id). И doctor_id и client_id ссылаются на поле id в таблице users.

Запишите Светлану Иванову к массажисту Лиане Белой.
Добавьте 5 ежедневных сеансов начиная с 20 мая 2017 года.
Каждый сеанс начинается в 12:30.*/

/*CREATE TABLE users23(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT null,
first_name VARCHAR(50) NOT null,
last_name VARCHAR(50) NOT null,
is_doctor BOOL NOT NULL DEFAULT false
);

INSERT INTO users23(first_name,	last_name,	is_doctor)
VALUES
('Виктор','Алтушев',	FALSE),
('Светлана','Иванова',False),
('Елена','Абрамова',False),
('Василиса','Кац',True),
('Антон','Сорокин',False),
('Алёна','Алясева',False),
('Лиана','Белая',True),
('Карина','Белая',False),
('Анастасия','Дейчман',True),
('Юлия','Фёдорова',FALSE);*/

/*CREATE TABLE calendar5(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
doctor_id INT UNSIGNED NOT NULL,
client_id INT UNSIGNED NOT NULL,
visit_date DATETIME NOT NULL
);*/
/*DROP TABLE if EXISTS calendar5;*/
/*INSERT INTO calendar5(doctor_id,	client_id,	visit_date)
VALUES
(4,1,'2017-04-16 11:00:00'),
(4,2,'2017-04-17 12:00:00'),
(7,6,'2017-04-16 15:30:00'),
(9,8,'2017-04-17 10:00:00'),
(4,7,'2017-04-17 13:00:00'),
(4,5,'2017-04-17 14:00:00'),
(7,1,'2017-04-17 14:00:00'),
(9,2,'2017-04-17 13:30:00'),
(9,3,'2017-04-17 12:30:00'),
(9,5,'2017-04-18 12:00:00'),
(4,6,'2017-04-17 15:30:00'),
(4,6,'2017-04-17 16:30:00'),
(4,8,'2017-04-17 17:00:00'),
(7,2,'2017-04-20 12:30:00'),
(9,3,'2017-05-17 14:00:00');*/

/*ALTER TABLE calendar5
ADD FOREIGN KEY (client_id) 
REFERENCES users23(id),
ADD FOREIGN KEY (doctor_id) 
REFERENCES users23(id);*/

INSERT INTO calendar5 (doctor_id,	client_id,	visit_date)
VALUES
(7,1,'2017-05-20 12:30:00'),
(7,1,'2017-05-21 12:30:00'),
(7,1,'2017-05-22 12:30:00'),
(7,1,'2017-05-23 12:30:00'),
(7,1,'2017-05-24 12:30:00');

