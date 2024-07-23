/*Добавьте в таблицы новый жанр «classic» и исполнителя «Eminem» в этом жанре.*/



INSERT INTO genres1(id, `name`)
VALUES
(7,'classic');

INSERT INTO artists1(id, NAME, genre_id, is_group)
VALUES
(14, 'Mozart', 7,FALSE);

/*
DELETE FROM genres1 WHERE id = 7;
DELETE FROM artists1 WHERE id = 14;*/


