CREATE DATABASE nucleus;
\c nucleus
CREATE TABLE accounts (id SERIAL PRIMARY KEY, user_name VARCHAR(255), password_digest VARCHAR(255));
CREATE TABLE items (id SERIAL PRIMARY KEY, item_name VARCHAR(255), fk_location_id INTEGER REFERENCES locations(id));
CREATE TABLE locations(id SERIAL PRIMARY KEY, location_name VARCHAR(255))
\dt
