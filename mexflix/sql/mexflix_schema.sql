DROP DATABASE IF EXISTS mexflix;

CREATE DATABASE IF NOT EXISTS mexflix;

USE mexflix;

-- tabla catalogo

CREATE TABLE status(
      status_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      status VARCHAR(20) NOT NULL
);

CREATE TABLE movieseries (
      imdb_id CHAR(9) PRIMARY KEY,
      title VARCHAR(80) NOT NULL,
      plot TEXT,
      author VARCHAR(100) DEFAULT 'Pending',
      actors  VARCHAR(100) DEFAULT 'Pending',
      country VARCHAR(30) DEFAULT 'Unknown',
      premiere YEAR(4) NOT NULL, 
      poster VARCHAR(150) DEFAULT 'no-poster.jpg',
      trailer VARCHAR(150) DEFAULT 'no-trailer.jpg',
      raiting DECIMAL(2,1), 
      genre VARCHAR(50) NOT NULL, 
      status INTEGER UNSIGNED NOT NULL,
      category ENUM('Movie', 'Serie') NOT NULL,
      FULLTEXT KEY search(title, author, actors, genre),
      FOREIGN KEY (status) REFERENCES status(status_id) ON DELETE RESTRICT ON UPDATE CASCADE 
);


CREATE TABLE users(
      user VARCHAR(20) PRIMARY KEY,
      email VARCHAR(80) UNIQUE NOT NULL,
      name VARCHAR(100) NOT NULL,
      birthday DATE NOT NULL,
      pass CHAR(32) NOT NULL,
      role ENUM('Admin', 'User') NOT NULL
);

-- 'Coming Soon', 'release', 'In Issue', 'Finished', 'Canceled'
INSERT INTO status(status_id, status) VALUES 
(1, 'Coming Soon'),
(2, 'Release'),
(3, 'In Issue'),
(4, 'Finished'),
(5, 'Canceled');

INSERT INTO users (user, email, name, birthday, pass, role) VALUES
('@harvy', 'harvy@gmail.com', 'harvy rosero', '2000-04-27', MD5('zantiago316'), 'Admin'),
('@juan', 'juan@gmail.com', 'juan mortal', '2000-03-12', MD5('juan123'), 'User');


INSERT INTO movieseries (imdb_id, title, plot, author, actors, country, premiere, poster, trailer, raiting, 
      genre, status, category) VALUES
      ('tt0987651', 
      'Rocky Balboa', 
      'Thirty years afyter the ring of the first bell, Rocky comes out 
      retirement and dons hos gloves for his final fight; against the reigning heavyweight
      champ Mason \'The Line\' Dixon.', 
      'Anthony Traver', 
      'Geraldine Hughes', 
      'USA', 
      '2006', 
      'https://evdboxeo.com/wp-content/uploads/2020/06/Rocky-Balboa-Foto-Cortes%C3%ADa-656x1024.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      7.2, 
      'Drama', 
      2, 
      'Movie'),

      ('tt11262070', 
      'Harley Queen', 
      'A woman strives to find her identity through a supervillain, dancer and mother in the Bajos 
      de Mena town which is known as \"Chile\'s biggest ghetto\" in Puente Alto, Santiago.', 
      'Carolina Adriazola, José Luis Sepúlveda', 
      'Cristian Donoso, Victoria Donoso, Catalina Flores', 
      'Chile', 
      '2019', 
      'https://m.media-amazon.com/images/M/MV5BODc4NGYxNjUtOWEzZi00ZTE5LWFlNDktMTRmNWM2NjIyMmE2XkEyXkFqcGdeQXVyOTE2MDk0MzY@._V1_SX300.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      6.6, 
      'Accion, Drama, Comedia', 
      2, 
      'Movie'),

      ('tt0451279', 
      'Wonder Woman', 
      'Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a 
      sheltered island paradise, when a pilot crashes on their shores and tells of a massive conflict 
      raging in the outside world, Diana leaves her home, convinced she can stop the threat. Fighting 
      alongside man in a war to end all wars, Diana will discover her full powers and her true destiny', 
      'Allan Heinberg, Zack Snyder, Jason Fuchs',
      'Gal Gadot, Chris Pine, Robin Wright', 
      'USA', 
      '2019', 
      'https://m.media-amazon.com/images/M/MV5BMTYzODQzYjQtNTczNC00MzZhLTg1ZWYtZDUxYmQ3ZTY4NzA1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_SX300.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      7.4, 
      'Action, Adventure, Fantasy', 
      3, 
      'Movie'),

      ('tt2707408', 
      'Narcos', 
      'Narcos tells the true-life story of the growth and spread of cocaine drug cartels across the 
      globe and attendant efforts of law enforcement to meet them head on in brutal, bloody conflict. 
      It centers around the notorious Colombian cocaine kingpin Pablo Escobar (Wagner Moura) and Steve 
      Murphy (Holbrook), a DEA agent sent to Colombia on a U.S. mission to capture 
      him and ultimately kill him.', 
      'Carlo Bernard, Chris Brancato, Doug Miro', 
      'Pedro Pascal, Lizbeth Eden, Wagner Moura', 
      'USA', 
      '2017', 
      'https://evdboxeo.com/wp-content/uploads/2020/06/Rocky-Balboa-Foto-Cortes%C3%ADa-656x1024.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      8.8, 
      'Action, Crime, Drama',  
      1, 
      'Serie'),

      ('tt1241317', 
      'Death Note', 
      'Light Turner, a bright student, stumbles across a mystical notebook that has the power to kill 
      any person whose name he writes in it. Light decides to launch a secret crusade to rid the streets 
      of criminals. Soon, 
      the student-turned-vigilante finds himself pursued by a famous detective known only by the alias L.', 
      'Carlo Bernard, Chris Brancato, Doug Miro', 
      'Pedro Pascal, Lizbeth Eden, Wagner Moura', 
      'USA', 
      '2017', 
      'https://evdboxeo.com/wp-content/uploads/2020/06/Rocky-Balboa-Foto-Cortes%C3%ADa-656x1024.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      4.8, 
      'Action, Crime, Drama',  
      3, 
      'Serie'),


      ('tt0409591', 
      'Naruto', 
      'Many years ago, in the hidden village of Konoha, lived a great demon fox. When it swung one 
      of it\'s nine tails, a tsunami occurred. The fourth hokage sealed this demon fox inside a boy 
      in exchange for his own life. Naruto was that boy, and he grew up with no family, and the 
      villagers hated him thinking that he himself was the demon fox. Naruto\'s 
      dream is to become Hokage, and have the villagers acknowledge him.', 
      'Masashi Kishimoto', 
      'Junko Takeuchi, Maile Flanagan, Kate Higgins', 
      'Japan', 
      '2007', 
      'https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      8.8, 
      'Action, Drama',  
      1, 
      'Serie'),

      ('tt0280249', 
      'Dragon Ball', 
      'Follows the adventures of an extraordinarily strong young boy named Goku as he searches for the 
      seven dragon balls. These balls, when combined, can grant the owner any one wish he desires. Along
      the way he 
      makes many new friends, and enemies, and he trains to become the strongest fighter in the world.', 
      'Akira toriyama', 
      'Brice Armstrong, Steve Olson, Stephanie Nadolny', 
      'Japan', 
      '2003', 
      'https://m.media-amazon.com/images/M/MV5BNDYyNTJkNmItYjgxNC00ODliLTg2MGMtZjkxNjEwYzdjNjUxXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      8.8, 
      'Action, Drama',  
      5, 
      'Serie'),

      ('tt0416449', 
      '300', 
      'In the Battle of Thermopylae of 480 BC an alliance of Greek city-states fought the invading 
      Persian army in the mountain pass of Thermopylae. Vastly outnumbered, the Greeks held back the 
      enemy in one of the most famous last stands of history. Persian King Xerxes led a Army of well over 
      100,000 (Persian king Xerxes before war has about 170,000 army) men to Greece and was confronted by 
      300 Spartans, 700 Thespians, and 400 Thebans. Xerxes waited for 10 days for King Leonidas to surrender 
      or withdraw but left with no options he pushed forward. After 3 days of battle all the Greeks were 
      killed. The Spartan defeat was not the one expected, as a local shepherd, named Ephialtes, defected 
      to the Persians and informed Xerxes that the separate path through Thermopylae,
      which the Persians could use to outflank the Greeks, was not as heavily guarded as they thought.', 
      'Zack Snyder, Kurt Johnstad, Michael B. Gordon', 
      'Gerard Butler, Lena Headey, David Wenham', 
      'United States, Canada, Bulgaria, Australia', 
      '2007', 
      'https://m.media-amazon.com/images/M/MV5BNWMxYTZlOTUtZDExMi00YzZmLTkwYTMtZmM2MmRjZmQ3OGY4XkEyXkFqcGdeQXVyMTAwMzUyMzUy._V1_SX300.jpg',
      'https://www.youtube.com/watch?v=RcQNrDdybiE', 
      7.8, 
      'Action, Drama',  
      3, 
      'Movie');


