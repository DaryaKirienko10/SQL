SELECT name, duration
FROM tracks
ORDER BY duration DESC LIMIT 1;

SELECT name
FROM tracks
WHERE duration >= 210;

SELECT name
FROM collections
WHERE year_release BETWEEN 2018 AND 2020;

SELECT nickname
FROM singers
WHERE nickname NOT LIKE '% %';

SELECT name
FROM tracks
WHERE name ILIKE '%my%';

SELECT g.name AS genre, COUNT(sg.singer_id) AS singers_count
FROM genres g
LEFT JOIN singersgenres sg ON sg.genre_id = g.genre_id
GROUP BY g.name;

SELECT a.name AS album_name, COUNT(t.track_id) AS track_count
FROM albums a
LEFT JOIN tracks t ON t.album_id = a.album_id
WHERE a.year_release BETWEEN 2019 AND 2020
GROUP  BY a.name;

SELECT a.name AS album_name, AVG(t.duration) AS average_duration
FROM albums a
JOIN tracks t ON t.album_id = a.album_id
GROUP BY a.name;

SELECT DISTINCT s.nickname
FROM singers s
JOIN albumssingers albs ON albs.singer_id = s.singer_id
LEFT JOIN albums a ON a.album_id = albs.album_id AND a.year_release = 2020
WHERE a.album_id IS NULL;

SELECT DISTINCT c.name
FROM collections c
JOIN collectionstracks ct ON ct.collection_id = c.collection_id
JOIN tracks t ON t.track_id = ct.track_id
JOIN albums a ON a.album_id = t.album_id
JOIN albumssingers albs ON albs.album_id = a.album_id
JOIN singers s ON s.singer_id = albs.singer_id
WHERE s.nickname = 'Taylor Swift'
