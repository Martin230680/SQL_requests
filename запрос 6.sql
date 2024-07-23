DROP TABLE if EXISTS cars;
CREATE TABLE cars(
id INT UNSIGNED,
mark VARCHAR (50),
model VARCHAR (50),
`year` smallINT unsigned,
country VARCHAR (50),
`power` smallINT UNSIGNED
);

INSERT INTO cars(id,mark,model,`year`,country,`power`)
VALUES
(1,'Toyota','Camry',2012,'JP',139),
(2,'Mazda','Demio',2004,'JP',113),
(3,'ВАЗ','2110',2010,'RU',79),
(4,'Nissan','Almera',2016,'JP',130),
(5,'Nissan','Juke',2016,'JP',120),
(6,'Reno','Logan',2009,'FR',87),
(7,'Lada','Priora',2017,'RU',78),
(8,'Reno','Duster',2011,'FR',143),
(9,'Hyundai','Solaris',2010,'KR',98),
(10,'Nissan','Patrol',2014,'JP',200),
(11,'Reno','Logan',2011,'FR',90),
(12,'Nissan','Sunny',1990,'JP',67),
(13,'Reno','Dust',2012,'FR',130),
(14,'Nissan','Sunny',1989,'JP',140);

SELECT * FROM cars 
WHERE mark='Nissan' AND `year`>=1990 AND `power`>120;



