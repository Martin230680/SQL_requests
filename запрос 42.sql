/*В таблице products8 содержатся товары из женского магазина. Пользователь ищет джинсы фирмы Mango
 36 или 38 размера. Получите из таблицы id, название и цену всех подходящих товаров. Учитывайте,
  что некоторых позиций на складе нет.*/
  
  SELECT * FROM products8
  WHERE (MATCH (`name`) AGAINST('+джинсы +Mango' IN BOOLEAN MODE)) AND (FIND_IN_SET('36',sizes)OR(FIND_IN_SET('38',sizes)));
  
 /* Найдите в таблице forum все посты, которые содержат слова «ошибка» или «проблема».
Выведите только id и название поста.*/

  SELECT id, `subject` FROM forum
  WHERE (MATCH (`subject`, post) AGAINST('ошибка проблема'));