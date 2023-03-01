SELECT album_name AS 'All albums in your table' FROM albums;
UPDATE albums SET sales = sales * 10;

SELECT release_date AS 'Release date', album_name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;

SELECT album_name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';