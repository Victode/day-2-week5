INSERT INTO "Movie" (movie_id, film_name)
VALUES 
	(1, 'George the Eagle Eye')

INSERT INTO "Concession" (concession_id, item_price, item_quantity)
VALUES 
	(1, 7.99, 1)

INSERT INTO "Ticket" (ticket_id, ticket_price, quantity, movie_id )
VALUES 
	(1, 10.99, 2, 1)
	
INSERT INTO "Customer" (customer_id, first_name, last_name, ticket_id, concession_id)
VALUES 
	(1, 'George', 'The snail', 1, 1)