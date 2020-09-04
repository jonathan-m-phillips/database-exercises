USE codeup_test_db;

/* Album names of all Pink Floyd Albums */
SELECT name FROM albums WHERE artist = 'Pink Floyd';

/* Release date of Beatles album */
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

/* Genre of Nirvana Nevermind album */
SELECT genre FROM albums WHERE name = 'Nevermind';

/* All Albums released in 1990s */
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

/* ALL Albums less than 20 million certified sales */
SELECT name FROM albums WHERE sales < 20.0;

/* All Albums with genre of rock */
SELECT name FROM albums WHERE genre = 'Rock';