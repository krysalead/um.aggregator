CREATE TABLE users (
	firstName text NOT NULL,
	lastName text NOT NULL,
	email text NOT NULL
);

CREATE UNIQUE INDEX idx_users_email 
ON users (email);

CREATE UNIQUE INDEX idx_users_name
ON users (firstName,lastName);