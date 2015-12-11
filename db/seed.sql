\c nucleus

  INSERT INTO locations (location_name) VALUES ('warehouse');
  INSERT INTO locations (location_name) VALUES ('garage1');
  INSERT INTO locations (location_name) VALUES ('garage2');
  INSERT INTO locations (location_name) VALUES ('store1');
  INSERT INTO locations (location_name) VALUES ('store1');
  INSERT INTO locations (location_name) VALUES ('warehouse2');
  INSERT INTO locations (location_name) VALUES ('yard');

  INSERT INTO categories (category_name) VALUES ('oil');
  INSERT INTO categories (category_name) VALUES ('brakes');
  INSERT INTO categories (category_name) VALUES ('rotors');
  INSERT INTO categories (category_name) VALUES ('wheels');
  INSERT INTO categories (category_name) VALUES ('tires');
  INSERT INTO categories (category_name) VALUES ('batteries');
  INSERT INTO categories (category_name) VALUES ('radiators');

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('royal purple','auto zone', 1, 4, 9.95, 30);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('die hard gold','auto zone', 11, 2, 140, 8);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('penzoil','auto zone', 1, 1, 8, 10);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('mobil 1','auto zone', 1, 7, 24.66, 18);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('powerstop','auto zone', 7, 3, 130.00, 4);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('wilwood','auto zone', 7, 6, 750.00, 1  );

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('sparco assetto','tire rack', 9, 8, 68.00, 4);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('walker','tire rack', 9, 8, 125.00, 4);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('mthod nv ','auto zone', 9, 1, 200, 1);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('royal purple','auto zone', 1, 4, 9.95, 30);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('douglas performance gt','tire rack', 10, 2, 52.50, 2);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('Bf Goodrich','tire rack', 10, 1, 199.49, 1);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('continental','tire rack', 10, 8, 87.25, 1);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('continental','tire rack', 10, 8, 87.25, 1);

  INSERT INTO products (product_name, product_vendor, category_id, location_id, unit_price, product_qty) VALUES ('continental','tire rack', 10, 8, 87.25, 1);





SELECT * FROM categories;
SELECT * FROM categories;
SELECT * FROM products;
