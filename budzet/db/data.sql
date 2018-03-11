INSERT INTO cinemas (name, city)
  values('Prosiaczek', 'Łódź');

INSERT INTO cinemas (name, city)
  values('Kłapouchy', 'Warszawa');

INSERT INTO cinemas (name, city)
  values('Smoczek', 'Kraków');

INSERT INTO cinemas (name, city)
  values('Skąpiec', 'Poznań');

INSERT INTO cinemas (name, city)
  values('Tygrysek', 'Rzeszów');

  INSERT INTO movie_genres (value)
  values('Dramat');

INSERT INTO movie_genres (value)
  values('Horror');

INSERT INTO movie_genres (value)
  values('Sci-Fi');

INSERT INTO movie_genres (value)
  values('Thriller');

INSERT INTO movie_genres (value)
  values('Akcji');

INSERT INTO movie_genres (value)
  values('Komedia');

INSERT INTO movies(title, description, id_genre, duration_minutes)
	VALUES ('Śmierć w Wenecji', 'Jakiś opis danego filmu', (SELECT id FROM movie_genres WHERE value='Thriller'), 120);

	INSERT INTO movies(title, description, id_genre, duration_minutes)
	VALUES ('Chłopaki nie płaczą', 'Jakiś opis danego filmu', (SELECT id FROM movie_genres WHERE value='Komedia'), 115);

	INSERT INTO movies(title, description, id_genre, duration_minutes)
	VALUES ('Gwiezdne Wojny', 'Jakiś opis danego filmu', (SELECT id FROM movie_genres WHERE value='Thriller'), 660);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '18.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '18.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Śmierć w Wenecji'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '18.00', CURRENT_TIMESTAMP);

		INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Prosiaczek'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);


INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Smoczek'), 50, '20.00', CURRENT_TIMESTAMP);
INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Skąpiec'), 50, '20.00', CURRENT_TIMESTAMP);

INSERT INTO seances(id_movie, id_cinema, tickets_count, ticket_price, seance_date)
	VALUES ((SELECT id FROM movies WHERE title='Gwiezdne Wojny'),(SELECT id FROM cinemas WHERE name='Tygrysek'), 50, '20.00', CURRENT_TIMESTAMP);



