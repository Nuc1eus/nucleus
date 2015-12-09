CREATE DATABASE nucleus;
\c nucleus

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  location_name VARCHAR(255),
  sub_location  VARCHAR(255)
);

CREATE TABLE catergories (
  id SERIAL PRIMARY KEY,
  category_name  VARCHAR(255)
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  category_id INTEGER REFERENCES catergories(id),
  product_name VARCHAR(255),
  product_description VARCHAR(255),
  product_upc VARCHAR(255),
  product_number NUMERIC,
  product_vendor VARCHAR(255),
  unit_price  NUMERIC,
  product_image VARCHAR(255),
  qty NUMERIC
);

CREATE TABLE location_quanities (
  id INTEGER REFERENCES locations(id),
  product_id INTEGER REFERENCES products(id),
  qty NUMERIC
);

CREATE TABLE accounts (
   id SERIAL PRIMARY KEY,
   user_name VARCHAR(255),
   password_digest VARCHAR(255),
   name VARCHAR(255),
   phone VARCHAR(255),
   email VARCHAR(255),
   is_admin BOOlEAN,
   log TEXT
 );

\dt
