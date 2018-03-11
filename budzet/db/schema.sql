CREATE SEQUENCE cinemas_seq START 1 INCREMENT 1;

CREATE TABLE cinemas(
  id int PRIMARY key default nextval('cinemas_seq'),
  name varchar(200),
  city varchar(100)
)
CREATE SEQUENCE users_seq START 1 INCREMENT 1;

CREATE TABLE users (
  id int PRIMARY key default nextval('users_seq'),
  login varchar(20),
  password varchar(100),
  email varchar(50)
);

CREATE SEQUENCE movie_genres_seq START 1 INCREMENT 1;

CREATE TABLE movie_genres (
  id int PRIMARY key default nextval('movie_genres_seq'),
  value varchar(30)
);

CREATE SEQUENCE movies_seq START 1 INCREMENT 1;

CREATE TABLE movies (
  id int PRIMARY key default nextval('movies_seq'),
  title varchar(200),
  description text,
  id_genre int REFERENCES movie_genres(id),
  duration_minutes int
);

CREATE SEQUENCE seances_seq START 1 INCREMENT 1;

CREATE TABLE seances (
  id int PRIMARY key default nextval('seances_seq'),
  id_movie int REFERENCES movies(id),
  id_cinema int REFERENCES cinemas(id),
  tickets_count int,
  ticket_price varchar(10),
  seance_date TIMESTAMP without time zone
);

CREATE SEQUENCE bookings_seq START 1 INCREMENT 1;

CREATE TABLE bookings (
  id int PRIMARY key default nextval('bookings_seq'),
  id_seance int REFERENCES seances(id),
  id_user int REFERENCES users(id),
  cancelled boolean DEFAULT false,
  first_name varchar(30),
  last_name varchar(30),
  phone_number varchar(15)
);

