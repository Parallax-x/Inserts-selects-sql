SELECT name, duration FROM track
WHERE duration = (SELECT max(duration) FROM track);

SELECT name FROM track
WHERE duration >= 210;

SELECT name FROM track t 
WHERE name = 'СЛОТ';

SELECT name FROM collection
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM artist
WHERE name NOT LIKE '% %';

SELECT name FROM track
WHERE name ILIKE 'my %'
OR name ILIKE '% my'
OR name ILIKE '% my %'
OR name ILIKE 'my';

SELECT name FROM track t 
WHERE string_to_array(lower("name"), ' ') && ARRAY['my'];

SELECT name FROM track t
WHERE name ~* '\mmy\M';

SELECT name, count(artist_id) artist_q FROM genre g
JOIN genre_artist ga ON g.genre_id = ga.genre_id 
GROUP BY g.name
ORDER BY artist_q DESC;

SELECT count(track_id) FROM track t 
JOIN album a ON t.album_id = a.album_id  
WHERE a.year BETWEEN 2019 AND 2020;

SELECT a."name", avg(t.duration) avg_dur FROM album a 
LEFT JOIN track t ON a.album_id = t.album_id 
GROUP BY a."name" 
ORDER BY avg_dur DESC;

SELECT name FROM artist a 
WHERE name NOT IN (SELECT a2."name" FROM artist a2
JOIN artist_album aa ON a2.artist_id = aa.artist_id
JOIN album a3 ON aa.album_id = a3.album_id
WHERE a3."year" = 2020);

SELECT c.name, a2.name FROM collection c 
JOIN track_collection tc ON c.collect_id = tc.collect_id 
JOIN track t ON t.track_id = tc.track_id 
JOIN album a ON a.album_id = t.album_id 
JOIN artist_album aa ON aa.album_id = a.album_id 
JOIN artist a2 ON a2.artist_id = aa.artist_id 
WHERE a2."name" = 'Linkin Park'
GROUP BY c."name", a2."name";

-- дополнительно
SELECT a.name album, a2.name artist, count(ga.genre_id) count_genre FROM album a 
JOIN artist_album aa ON a.album_id =aa.album_id 
JOIN artist a2 ON a2.artist_id = aa.artist_id 
JOIN genre_artist ga ON ga.artist_id =a2.artist_id  
GROUP BY a."name", a2."name"  
HAVING count(ga.genre_id) > 1;

SELECT t.name FROM track t 
LEFT JOIN track_collection tc ON t.track_id = tc.track_id
WHERE tc.track_id IS NULL;

SELECT a.name FROM artist a 
JOIN artist_album aa ON a.artist_id = aa.artist_id 
JOIN album a2 ON a2.album_id = aa.album_id 
JOIN track t ON a2.album_id = t.album_id
WHERE t.duration = (SELECT min(t2.duration) FROM track t2
JOIN artist_album aa2 ON t2.album_id = aa2.album_id);

SELECT a.name FROM album a 
JOIN track t ON t.album_id = a.album_id 
GROUP BY a.album_id 
HAVING count(t.track_id) = (SELECT count(t.track_id) FROM track t2 
GROUP BY a.album_id 
ORDER BY 1
LIMIT 1);

