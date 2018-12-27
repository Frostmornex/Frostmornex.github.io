create database homework;
use homework;

CREATE TABLE books (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(100) CHARACTER SET utf8,
  author varchar(50) CHARACTER SET utf8,
  rate int(4) UNSIGNED,
  year int(8) UNSIGNED,
   PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO books (title,author,rate,year) VALUES 
('Пламя и кровь. Кровь драконов','Джордж Мартин','7','2018'),
('Вивьен. Тень дракона','Диана Хант','6','2018'),
('Академия Арктур','Сильвия Лайм','8','2018'),
('Мир обмана. Вспомнить все','Антон Емельянов','10','2018'),
('Темная академия','Валерий Старский','8','2018'),
('Я - другой','Денис Деев','6','2018'),
('Однажды в Вавилоне','Макс Топоров','9','2018'),
('В шоке','Алексис Апсоколопос','3','2018'),
('Механическое диво','Евпатий Сволота','9','2018'),
('Аффективный','Альма Либрем','8','2018');

ALTER TABLE books ADD country varchar(50) CHARACTER SET utf8;
ALTER TABLE books CHANGE country country INT(50) NULL DEFAULT NULL;
ALTER TABLE books DROP country;

SELECT * FROM books;
SELECT title,author FROM books;
SELECT * FROM books WHERE rate > 5;
SELECT * FROM books ORDER BY rate desc;
SELECT * FROM books WHERE rate > 7 and year > 2015 ORDER BY year asc;
