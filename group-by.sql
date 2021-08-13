SELECT 
genre_id, name, COUNT(*)
FROM
track
GROUP BY
genre_id, track.name

SELECT COUNT(*), genre.name
FROM track
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name = 'Pop' OR genre.name = 'Rock'
GROUP BY genre.name;

SELECT artist.name, COUNT(*)
FROM album
JOIN artist ON artist.artist_id = album.artist_id
GROUP BY artist.name