SELECT *
FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > .99


SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
FROM invoice
JOIN customer
ON invoice.customer_id = customer.customer_id


SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name
FROM customer
JOIN employee
ON customer.support_rep_id = employee.employee_id


SELECT album.title, artist.name
FROM album
JOIN artist
ON album.artist_id = artist.artist_id


SELECT playlist_track.playlist_track_id
FROM playlist_track
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id
WHERE playlist.name LIKE 'Music'


SELECT track.name
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id


SELECT track.name, playlist.name
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id


SELECT track.name, album.title
FROM track
JOIN album
ON track.album_id = album.album_id
JOIN genre
ON track.genre_id = genre.genre_id
WHERE genre.name LIKE 'Alternative & Punk'


SELECT * FROM invoice
WHERE invoice_id IN (
	SELECT invoice_id FROM invoice_line WHERE unit_price > .99
)


SELECT * FROM playlist_track
WHERE playlist_id IN (
	SELECT playlist_id FROM playlist WHERE name = 'Music'
)

SELECT track.name FROM track
WHERE track_id IN (
	SELECT track_id FROM playlist_track
  WHERE playlist_id in (
  SELECT playlist_id FROM playlist
    WHERE playlist_id = 5
  )
)

SELECT * FROM track
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE genre.name = 'Comedy'
)

SELECT * FROM track
WHERE album_id IN (
	SELECT album_id FROM album
  WHERE title = 'Fireball'
)


SELECT * FROM track
WHERE album_id IN (
	SELECT album_id FROM album
  WHERE artist_id IN (
  	SELECT artist_id FROM artist
    WHERE name = 'Queen'
  )
)

CREATE VIEW rock AS
SELECT * FROM track
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE name = 'Rock'
)


CREATE VIEW classical_count AS
SELECT COUNT(*) FROM track
WHERE track_id IN (
	SELECT track_id FROM playlist_track
  WHERE playlist_id IN (
  SELECT playlist_id FROM playlist
    WHERE name = 'Classical'
  )
)
   
   
SELECT * FROM CUSTOMER
   
 UPDATE customer
 SET fax = NULL



UPDATE customer
SET company = 'Self'
WHERE company IS NULL;


SELECT * FROM customer
WHERE first_name = 'Julia' AND last_name = 'Thompson'

UPDATE customer
SET last_name = 'Thompson'
WHERE customer_id = 28


 
SELECT * FROM customer
WHERE email = 'luisrojas@yahoo.cl'

UPDATE customer
SET support_rep_id = 4
WHERE customer_id = 57

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE name = 'Metal' AND composer IS NULL
)
SELECT * FROM track
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE name = 'Metal'
)
