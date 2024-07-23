/*запрос категории товаров в которой меньше 50*/


SELECT 
g.category_id,c.name,COUNT(*) AS cnt 
FROM good AS g
JOIN good_category AS c ON c.id=g.category_id
GROUP BY g.category_id
HAVING cnt < 50;