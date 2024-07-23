/*INSERT INTO users20 (first_name, last_name, age)
VALUES 
('Антон','Дмитриев',20);*/

INSERT INTO users_details20 (id,bio)
VALUES (LAST_INSERT_ID(),'Антон родился в 1993 году.');