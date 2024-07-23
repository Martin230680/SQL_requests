/*
Этот запрос должен выводить из таблицы order:

Идентификатор заказа (id).
Идентификатор пользователя (user_id).
Идентификатор статуса (status_id) по возрастанию.
Дату создания по убыванию (creation_date).
Поле `label`.
Условия на поле `label`:

Если заказ старше одного года и status_id равен 7 или 8, то в поле `label` нужно выводить «Старый». 
Если заказ старше одного года и в других статусах — слово «Устаревший».
Если заказ младше одного года во всех статусах — слово «Новый».
*/

SELECT id,user_id,status_id,creation_date, CASE 
when (NOW()-creation_date)>365 AND (status_id=7 or status_id=8) then 'Старый'
when (NOW()-creation_date)>365 then 'Устаревший'
ELSE 'Новый'
END AS lable 
FROM `order`
ORDER BY status_id, creation_date DESC;

/* альтернативный вариант
SELECT
    `id`,
    `user_id`,
    `status_id`,
    `creation_date`,
    CASE
        WHEN DATEDIFF(CURDATE(), `creation_date`) / 365 <= 1 THEN 'Новый'
        WHEN `status_id` in (7, 8) THEN 'Старый'
        ELSE 'Устаревший'
    END `label`
FROM `order`
ORDER BY `status_id`, `creation_date` DESC;
*/

/* с использованем if 
SELECT
    `id`,
    `user_id`,
    `status_id`,
    `creation_date`,
    IF (
        DATEDIFF(CURDATE(), `creation_date`) / 365 > 1,
        IF (`status_id` in (7, 8), 'Старый', 'Устаревший'),
        'Новый'
    ) `label`
FROM `order`
ORDER BY `status_id`, `creation_date` DESC;
*/