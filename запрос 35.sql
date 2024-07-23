DROP TABLE if EXISTS articles;
CREATE TABLE articles (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL, 
    text TEXT
);

INSERT INTO articles(`name`,`text`)
VALUES ('marat','hello hello'),
('ludmila','no hello no hello');
