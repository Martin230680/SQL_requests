DROP TABLE if EXISTS apartments;
CREATE TABLE apartments(
id INT UNSIGNED,
image VARCHAR (100),
price DECIMAL (10, 0),
square INT (3) UNSIGNED
);

INSERT INTO  apartments
VALUES 
(1,'/apartments/1/cover.jpg',5250000,90),
(2,'/apartments/2/cover-3.jpg',7500000,103),
(3,'',2300000,56);
