CREATE SEQUENCE cinemas_seq START 1 INCREMENT 1;

CREATE TABLE users (
  id int PRIMARY key default nextval('users_seq'),
  login varchar(20),
  password varchar(100),
  email varchar(50)
);



