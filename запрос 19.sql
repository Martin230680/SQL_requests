/*Создайте таблицу orders с автоинкрементальным первичным ключом id, полем state для хранения статуса заказа и полем 
amount для хранения суммы заказа. Статус заказа умещается в строку длиной 8 символов, а сумма заказа является денежным 
типом до 1 млн. с двумя знаками после десятичной точки.
Добавьте 3 записи так, чтобы получалась таблица ниже:

d	state	amount
1	new	1000.50
2	new	3400.10
3	delivery	7300.00
*/

CREATE TABLE orders2(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
state VARCHAR (8) NOT NULL DEFAULT 'new',
amount DECIMAL (6,2)
);
INSERT INTO orders2(amount)
VALUES (1000.50),
(3400.10);
INSERT INTO orders2(state,amount)
VALUES('delivery', 7300.00);