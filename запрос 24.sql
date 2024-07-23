/*
Удалите из таблицы orders заказы с номерами 3, 4 и 7.
id	user_id	products_count	sum	status
1	1	2	1300	new
2	18	1	200	cancelled
3	11	1	2140	in_progress
4	145	5	6800	new
5	23	1	999	new
6	1	2	7690	cancelled
7	17	1	1600	new
8	5	4	400	delivery
9	2355	1	1450	new
10	13	7	13000	new
*/
DROP TABLE if EXISTS orders3;
CREATE TABLE orders3(
id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
user_id INT UNSIGNED NOT null,
products_count INT UNSIGNED NOT null,
`sum` INT UNSIGNED NOT null,
`status` ENUM ('new','cancelled','in_progress','delivery') not null DEFAULT 'new'
);
INSERT INTO orders3 (user_id, products_count, `sum`, `status`)
values
(1,2,1300,'new'),
(18,1,200,'cancelled'),
(11,1,2140,'in_progress');

INSERT INTO orders3 (user_id, products_count,`sum`)
VALUES
(145,5,6800),
(23,1,999);

INSERT INTO orders3 (user_id, products_count,`sum`,`status`)
VALUES
(1,2,7690,'cancelled'),
(17,1,1600,'new'),
(5,4,400,'delivery');

INSERT INTO orders3(user_id, products_count,`sum`)
VALUES
(2355,1,1450),
(13,7,13000);

DELETE FROM orders3
WHERE id=3 OR id=4 OR id=7;

SELECT * FROM orders3;
