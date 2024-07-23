SELECT `mark`, `model`,`year` FROM cars
WHERE country='JP' OR mark = 'Reno'
ORDER BY `year` DESC;