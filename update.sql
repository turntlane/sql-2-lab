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
