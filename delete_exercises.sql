SELECT 'Albums released after 1988' AS 'Info';
DELETE FROM albums WHERE release_date > 1988;

SELECT 'Albums with the genre \'stuff\'' AS 'Info';
DELETE FROM albums WHERE genre = 'stuff';

SELECT 'All albums by Eagles' AS 'Info';
DELETE FROM albums WHERE artist = 'Eagles';
