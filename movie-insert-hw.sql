INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	email
) VALUES (
	1,
	'Andres',
	'Leanos',
	'something1212@gmail.com'
);

INSERT INTO movie(
	movie_id,
	title,
	rating
) VALUES (
	1,
	'blockbuster title',
	'PG-13'
);

INSERT INTO ticket(
	ticket_id,
	price,
	customer_id,
	movie_id
) VALUES (
	1,
	15.00,
	1,
	1
);

INSERT INTO concession(
	item_id,
	item_name,
	item_price,
	customer_id
) VALUES (
	1,
	'Hot Dog',
	5.00,
	1
);
