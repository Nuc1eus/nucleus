CREATE DATABASE nucleus;
\c nucleus
CREATE TABLE accounts (id SERIAL PRIMARY KEY, user_name VARCHAR(255), password_digest VARCHAR(255));
CREATE TABLE items (id SERIAL PRIMARY KEY, item_name VARCHAR(255), location VARCHAR(255));
\dt
