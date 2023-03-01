SELECT 'The name of all albums by Pink Floyd.' AS 'Info';
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date FROM albums WHERE album_name = "Sgt. Pepper's Lonely Hearts Club Band";

SELECT 'The genre for Sgt. Pepper''s Lonely Hearts Club Band' AS 'Info';
SELECT genre FROM albums WHERE album_name = "Sgt. Pepper's Lonely Hearts Club Band";

SELECT 'Albums were released in the 1990s' AS 'Info';
SELECT release_date, album_name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums less than 20 million certified sales' AS 'Info';
SELECT album_name FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock".' AS 'Info';
SELECT album_name FROM albums WHERE genre = 'Rock';
