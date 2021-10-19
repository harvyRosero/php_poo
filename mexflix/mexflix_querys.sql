INSERT INTO movieseries SET imdb_id = 'tt3749900', title = 'Gotham', genero = 'Drama, Crime, Thriller'
, premiere = '2014', status = 3;


UPDATE movieseries SET author = 'Bruno Heller', actors = 'Ben McKenzie,
Jada Pinkett Smith, Donal Logue', country ='USA', 
poster='https://m.media-amazon.com/images/M/MV5BMTU5NjQ2MTU4NV5BMl5BanBnXkFtZTgwOTYyNTAwNzM@._V1_SX300.jpg', 
trailer='https://www.youtube.com/watch?v=RcQNrDdybiE', raiting = 7.8 , 
plot = 'In crime ridden Gotham City
  Thomas and Martha Wayne are murdered before young Bruce Wayne\'s eyes. 
  Although Gotham City Police Department detectives
  James Gordon
  and his cynical partner
  Harvey Bullock
  seem to solace\'s the case quickly
  things are not so simple. Inspired by Bruce\'s traumatized desire for justice
  Gordon vows to find it amid Gotham\'s corruption. Thus begins Gordon\'s lonely 
  quest that would set him against his own comrades and the underworld with their own deadly 
  rivalries and mysteries. In the coming wars
  innocence will be lost and compromises will be made as some criminals will fall as casualties
    while others will rise as super villains. All the while
  young Bruce observes this war with a growing obsession that would one day drive him to seek 
  his own justice against the evil of Gotham as The Batman.',
category = 'serie' WHERE imdb_id = 'tt3749900';


DELETE FROM movieseries WHERE imdb_id = 'tt3749900';

SELECT *  FROM movieseries; 

SELECT COUNT(*) FROM movieseries;

SELECT * FROM movieseries WHERE category = 'Movie';

SELECT title, category, country, premiere, status FROM movieseries 
WHERE category='Serie' ORDER BY premiere;

SELECT title, category, country, premiere, status FROM movieseries 
WHERE category='Movie' AND country = 'USA' ORDER BY premiere;

-- %USA que termine en USA
-- %USA% que contenga usa en cualquire posicion USA
-- USA% empiece por USA

SELECT title, category, country, premiere, status FROM movieseries 
WHERE category='Movie' AND country LIKE = '%USA' ORDER BY premiere;

--------------------------------------------------------------------
-- CONSULTAS MULTIPLES


SELECT title, category country FROM movieseries AS ms INNER JOIN status AS s ON ms.status = s.status_id ;

SELECT ms.title, ms.category, s.status, ms.premiere FROM movieseries AS ms INNER JOIN status AS s  
ON ms.status = s.status_id ORDER BY ms.premiere DESC;

SELECT ms.title, ms.category, ms.country, s.status FROM movieseries AS ms INNER JOIN status AS s ON  
ms.status = s.status_id WHERE (s.status = 'Release' OR s.status = 'Coming Soon') AND ms.category = 'Serie' 
ORDER BY ms.premiere;

--------------------------------------------------------------
-- CONSULTA FULLTEXT KEY 

SELECT * FROM movieseries 
WHERE MATCH (title, author, actors)
AGAINST('Action' IN BOOLEAN MODE);

SELECT * FROM  movieseries WHERE MATCH(title, author, actors) 
AGAINST ('Geraldine Hughes' IN BOOLEAN MODE );

SELECT ms.title, ms.category, ms.country, ms.genero, ms.premiere, s.status
FROM movieseries as ms 
INNER JOIN status as s 
ON ms.status = s.status_id
WHERE MATCH(ms.title, ms.author, ms.actors)
AGAINST('' IN BOOLEAN MODE);

----------------------------------------------------------------
-- INTEGRIDAD REFERENCIAL 
SELECT COUNT(*) FROM movieseries WHERE status = 1;
SELECT COUNT(*) FROM movieseries WHERE status = 2;
SELECT COUNT(*) FROM movieseries WHERE status = 3;
SELECT COUNT(*) FROM movieseries WHERE status = 4;
SELECT COUNT(*) FROM movieseries WHERE status = 5;

INSERT INTO status SET status = 'otro status', status_id = 0;

-- mysql no permite eliminar los campos que estan asociados con la tabla movieseries 
DELETE  FROM status WHERE status_id = 1;

-- consulta ordenada por status y despues por titulo
SELECT ms.title, s.status, ms.status
FROM movieseries AS ms INNER JOIN status AS s 
ON ms.status = s.status_id
ORDER BY s.status, ms.title;


-- actualiza el status_id = 2 por 7 y le agrega Estrenada al campo status 
UPDATE status SET status_id = 7,
status = 'Estrenada' WHERE status_id = 2;





