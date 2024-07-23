DROP TABLE if EXISTS arrival;
CREATE TABLE arrival(
id INT UNSIGNED,
user_id INT UNSIGNED,
a_date date,
a_time  time
);

INSERT INTO arrival(id,user_id,a_date,a_time)
VALUES
(1,10,'2017-03-09','08:45:41'),
(2,12,'2017-03-09','08:46:12'),
(3,7,'2017-03-09','08:53:01'),
(4,31,'2017-03-09','08:53:01');

