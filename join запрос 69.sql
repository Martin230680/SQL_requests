/*SELECT 
   p.id, 
   p.name, 
   p.price,
   cats.name as category
FROM 
    products as p, 
    categories as cats
WHERE
   p.category_id = cats.id AND
   cats.parent_id IS NULL*/
   
  /* Перепишите SQL-запрос с помощью конструкции JOIN:*/
/*CREATE TABLE   products15(
id	INT,
`name` VARCHAR(50),
`count`INT,	
price	INTEGER,
category_id INT
);*/
/*
INSERT INTO products15 (id,`name`, `count`, price, category_id)
VALUES
(1,'	Сникерс',	89	,56,	1),
(2,'	Яблоки, 1 кг',	43,	139,	4),
(3,'	Сок яблочный',	34	,112,	5),
(4	,'Бурёнушка	',50	,56,	7),
(5	,'Якобс',	14	,347,	11),
(6	,'Забористый',	12	,109,	9),
(7	,'Ахмад',	40	,108,	13),
(8,'	Французское, 1 литр',	3,	890,	14),
(9,'	Alpen Gold	',200	,76,	1),
(10,'	CocaCola, 1 литр',	34	,78,	16),
(11,'	Fanta, 2 литра	',39,	99	,16),
(12,'	Говядина	',45,	170,	17),
(13,'	Апельсины',	78	,56,	4);*/

/*CREATE TABLE categories4(
id INT,
parent_id INT,
`name` VARCHAR(50)
);

INSERT INTO categories4(id	,parent_id,`name`)
VALUES
(1	,NULL,'Шоколад'),
(2,NULL,'Молочные продкты'),
(3,NULL,'Фрукты и овощи'),
(4,3,'Фрукты'),
(5	,NULL,'Напитки'),
(6,2,'Сметана'),
(7,2,'Молоко'),
(8,NULL,'Хлеб'),
(9,5,'Квас'),
(10,NULL,'Чай и кофе'),
(11,10,'Кофе'),
(12,NULL,'Мясо'),
(13,10,'Чай'),
(14,5,'Вино'),
(15,12,'Рыба'),
(16,5,'Газировка'),
(17,12,'Мясо');*/


SELECT 
   p15.id, 
   p15.name, 
   p15.price,
   cats.name as category
FROM 
    products15 AS p15, 
    categories4 as cats
WHERE
   p15.category_id = cats.id AND
   cats.parent_id IS NULL;

SELECT 
   p.id, 
   p.name, 
   p.price,
   cats.name as category
   
FROM  products15 AS p
join categories4 as cats ON cats.id=p.category_id
WHERE cats.parent_id IS NULL;
