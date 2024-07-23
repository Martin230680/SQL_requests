/*
Добавьте в таблицу articles поле state для хранения статуса статьи.
Поле может принимать одно из трех значений: draft, correction или public, 
причем draft должно ставиться изначально. NULL для поля запрещен.
*/

/* удаление столбцы*/
ALTER TABLE articles
DROP COLUMN state;
/* создание столбца default обязательно тк таблица уже существует, нужно задать какое то изначальное значение ячейкам*/
ALTER TABLE articles
ADD COLUMN state ENUM ('draft','correction','public') not null DEFAULT 'draft';
/* удаление столбца*/
ALTER TABLE articles
DROP COLUMN `date`;
/* создание столбца, default обязательно тк таблица уже существует, нужно задать какое то изначальное значение ячейкам*/
ALTER TABLE articles
ADD COLUMN `date` DATETIME NOT NULL DEFAULT CURRENT_timestamp;