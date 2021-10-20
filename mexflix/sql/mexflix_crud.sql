-- Listado de operciones

-- movieseries 
--     Crear movieseries
INSERT INTO movieseries SET imdb_id = 'tt3749900',
title = 'Gothan',
plot = '',
author = '',
actors = '',
country = '',
premiere = '2014',
trailer = '',
poster = '',
raiting = 8.0,
genre = '',
status = 3,
category = 'Drama, Thriller';


--     Actualizar movieseries
UPDATE movieseries SET 
title = 'Gotham',
plot = 'The story behind Detective 
James Gordon\'s rise to prominence in Gotham City in the 
years before Batman\'s arrival',
author = 'Bruno Heller',
actors = 'Ben McKenzie, Jada Pinkett Smith, Donal Logue',
country = 'USA',
premiere = '2014',
trailer = 'https://youtobe.com',
poster = 'https://m.media-amazon.com/images/M/MV5BMTU5NjQ2MTU4NV5BMl5BanBnXkFtZTgwOTYyNTAwNzM@._V1_SX300.jpg',
raiting = 7.8,
genre = 'Action, Crime, Drama',
status = 3,
category = '2'
WHERE imdb_id = 'tt3749900';

--     Eliminar movieseries
DELETE FROM movieseries WHERE imdb_id = 'tt3749900';

--     Buscar todas las peliculas
SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, 
ms.trailer, ms.poster, ms.raiting, ms.genre, ms.category, s.status 
FROM movieseries AS ms 
INNER JOIN status AS s
ON ms.status = s.status_id;

--     Buscar por titulo, personas, genero
SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, ms.trailer, ms.poster,
        ms.raiting, ms.genre, ms.category, s.status 
FROM movieseries AS ms 
INNER JOIN status AS s
ON ms.status = s.status_id
WHERE MATCH(ms.title, ms.author, ms.actors, ms.genre)
AGAINST('Drama' IN BOOLEAN MODE);

--     Buscar por categoria
SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, ms.trailer, ms.poster,
        ms.raiting, ms.genre, ms.category, s.status 
FROM movieseries AS ms 
INNER JOIN status AS s
ON ms.status = s.status_id
WHERE ms.category = 'Movie';

--     Buscar pot status
SELECT ms.imdb_id, ms.title, ms.plot, ms.author, ms.actors, ms.country, ms.premiere, ms.trailer, ms.poster,
        ms.raiting, ms.genre, ms.category, s.status 
FROM movieseries AS ms 
INNER JOIN status AS s
ON ms.status = s.status_id
WHERE ms.status = 1;


-- status
--     Crear status
INSERT INTO status SET status_id = 0, status = 'Otro status';

--     Actualizar status
UPDATE status SET status = 'Other status' WHERE status_id = 6;

--     Eliminar status
DELETE FROM status WHERE status_id = 6;

--     Buscar todos los estatus 
SELECT * FROM status;

--     Buscar un status por status_id 
SELECT * FROM status WHERE status_id = 3;

-- user
--     Crear usuario
INSERT INTO users SET user = '@usuario', email= 'usuario@gmail.com', name = 'soy usuario',
birthday = '1998-10-08', pass = MD5('un_password'). role = 'Admin';

--     Actualizar
--         Datos generales
UPDATE users SET name = 'soy un Usuario', birthday = '1994-10-09', role = 'User'
WHERE user = '@usuario' AND email = 'usuario@gmail.com';

--         password 
UPDATE users SET pass = MD5 ('un_nuevo_password')
WHERE user = '@usuario' AND email = 'usuario@gmail.com';

--     Eliminar user 
DELETE FROM users WHERE user = '@usuario' AND email = 'usuario@gmail.com';

--     Buscar todos los usuarios
SELECT * FROM users;

--     Buscar usuario por 
--         user
SELECT * FROM users WHERE user = '@usuario';  

--         email
SELECT * FROM users WHERE email = 'usuario;@gmail.com';

--         rol
SELECT * FROM users WHERE role = 'User';


