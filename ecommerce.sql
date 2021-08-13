CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(20),
  user_email VARCHAR(20)
);


CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(20),
  price NUMERIC(10, 2)
);

CREATE TABLE cart (
	cart_id SERIAL PRIMARY KEY,
  quantity NUMERIC(10),
  user_id INT NOT NULL REFERENCES users(user_id),
  product_id INT NOT NULL REFERENCES products(product_id)
);

INSERT INTO users(user_name, user_email)
VALUES('turntlane', 'idk@gmail.com');

INSERT INTO users(user_name, user_email)
VALUES('idklol', 'idk2222@gmail.com');

INSERT INTO users(product_name, user_email)
VALUES('devmoun', 'yessirski@gmail.com');


INSERT INTO products(product_name, price)
VALUES('apple', 15);

INSERT INTO products(product_name, price)
VALUES('orange', 10);

INSERT INTO products(product_name, price)
VALUES('berry', 5);

INSERT INTO products(product_name, price)
VALUES('pencil', 5);

INSERT INTO products(product_name, price)
VALUES('phone', 100);



INSERT INTO cart(quantity, user_id, product_id)
VALUES(2, 1, 1);

INSERT INTO cart(quantity, user_id, product_id)
VALUES(5, 2, 2);


SELECT * FROM cart
WHERE product_id IN (
	SELECT product_id FROM products
  WHERE user_id = 1
)

SELECT SUM(quantity) FROM cart

SELECT * FROM cart;

UPDATE cart
SET quantity = 20
WHERE user_id = 2






