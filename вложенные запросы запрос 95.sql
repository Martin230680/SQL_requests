/*Для хранения транзакций в базе данных используется 3 таблицы: 
bank_transactions, cashbox_transactions и paypal_transactions.
Выведите дату, сумму и тип последних трех транзакций.
Итоговые данные отсортируйте по дате в хронологическом порядке.
В качестве типа используйте bank, cash и paypal в зависимости от таблицы.
Тип выведите в поле payment_type.*/
SELECT *, 'bank' AS payment_type from bank_transactions
UNION 
SELECT *, 'cash' from cashbox_transactions
UNION 
SELECT *, 'paypal' from paypal_transactions;

SELECT `date`, amount, payment_type FROM
(
SELECT *, 'bank' AS payment_type from bank_transactions
UNION 
SELECT *, 'cash' from cashbox_transactions
UNION 
SELECT *, 'paypal' from paypal_transactions
) AS tb1 
ORDER BY `date` DESC LIMIT 3
;

