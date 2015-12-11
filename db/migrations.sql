  CREATE DATABASE nucleus;
  \c nucleus

  CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    location_name VARCHAR(255),
    location_desc VARCHAR(255),
    location_image VARCHAR(255),
    sub_location  VARCHAR(255)
  );

  CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category_name  VARCHAR(255),
    category_info VARCHAR(255),
    category_image VARCHAR(255)
  );

  CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    category_id INTEGER REFERENCES categories(id),
    location_id INTEGER REFERENCES locations(id),
    product_name VARCHAR(255),
    product_description VARCHAR(255),
    product_upc VARCHAR(255),
    product_number INTEGER,
    product_vendor VARCHAR(255),
    unit_price  INTEGER,
    product_image VARCHAR(255),
    product_qty INTEGER
  );

  CREATE TABLE location_quanities (
    id INTEGER REFERENCES locations(id),
    product_id INTEGER REFERENCES products(id),
    qty INTEGER
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
