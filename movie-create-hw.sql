--Create tables for movie theatre database
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY, 
	title VARCHAR(100),
	rating VARCHAR(50)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY, 
	price NUMERIC(4,2),
	purchase_date DATE DEFAULT CURRENT_DATE,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE concession(
	item_id SERIAL PRIMARY KEY, 
	item_name VARCHAR(100),
	item_price NUMERIC(4,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
