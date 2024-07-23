/*Получите из таблицы products8 все джинсы и жилеты, за исключеним товаров фирмы Mango.*/
SELECT * FROM products8
WHERE MATCH (`name`)
AGAINST ('джинс* жилет* -Mango' IN BOOLEAN MODE); 