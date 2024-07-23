
/*
CREATE TABLE products_details1234
(id	INTEGER unsigned NOT null PRIMARY key,
product_id INTEGER UNSIGNED NOT null,
`description` VARCHAR(50)

);

INSERT INTO products_details1234(id,product_id,`description`)
values
(1,2,'Выдерживает сухую уборку'),
(2,4,'Долговечное супербелое покрытие'),
(3,3,'Подходит для всех типов обоев'),
(4,1,'Очень прочное покрытие'),
(5,5,'Непревзойденная красота и гладкость покрытия');



CREATE TABLE products17 (
id	INTEGER UNSIGNED NOT null PRIMARY KEY ,
`name` VARCHAR(50),
`count` INTeger,
price	INTeger,
`active` BOOL
);


INSERT INTO products17(id,`name`,`count`,price,`active`)
VALUES
(1,'Dulux Diamond Matt',5,700,TRUE),
(2,'Marshall Maestro',3,860,FALSE),
(3,'Dulux Easy',3,400,FALSE),
(4,'Marshall Export-2',2,450,TRUE),
(5,'Dulux Vinyl Matt',0,720,TRUE);


/*
запрос на уделение внешнего ключа
ALTER TABLE products_details1234 
drop FOREIGN KEY products_details1234_ibfk_1;
*/

/*
запрос на добавление внешнего ключа если таблица уже создана
тип product_id n id должны совпадать 
ALTER TABLE products_details1234 
ADD FOREIGN KEY (product_id)
REFERENCES products17(id)
ON DELETE cascade;
*/
/*
Удалите из обеих таблиц все товары, которых нет в наличии или которые неактивны.
Используйте один SQL-запрос.*/

DELETE FROM  products17
WHERE `active` = FALSE OR `count` = 0;

/*так как таблицы связаны delete cascade в таблицу products_details1234 также последовали изменения
- удаление лишних строк*/


