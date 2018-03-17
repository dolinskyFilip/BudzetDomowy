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

CREATE SEQUENCE outgoings_seq START 1 INCREMENT 1;
CREATE TABLE outgoings(
outgoingsID int PRIMARY KEY default nextval('outgoings_seq')),
userID int REFERENCES users(id),
outgoingsCategory varchar(20),
outgoingsAmount varchar(20)
);


