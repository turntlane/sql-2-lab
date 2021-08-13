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
