CREATE SEQUENCE users_seq START 1 INCREMENT 1;

CREATE TABLE users (
  id int PRIMARY key default nextval('users_seq'),
  login varchar(20),
  password varchar(100),
  email varchar(50)
);

CREATE SEQUENCE income_seq START 1 INCREMENT 1;

CREATE TABLE income (
  id int PRIMARY key default nextval ('income_seq'),
  idUser int REFERENCES users(id),
  incomeCategory varchar (20),
  incomeAmount varchar (20)
);



