\c nucleus

INSERT INTO locations (location_name, location_desc, location_image, sub_location) VALUES ('Building 1','900 Kingsbury St','http://demo.pixelcave.com/oneui/assets/img/photos/photo3@2x.jpg','Office 9');

INSERT INTO categories (category_name, category_info, category_image) VALUES ('Tires','Auto Tires','http://st.motortrend.com/uploads/sites/5/2012/03/Nitto-Motivo-Tire-front.jpg');

INSERT INTO products (product_name, product_description, product_upc, product_number, product_vendor, unit_price, product_image, product_qty) VALUES ('252x22x250 Falkon Tires','2015 Model Run Flat All Season Tires','UPC2015','001','Kumo','200','https://upload.wikimedia.org/wikipedia/commons/9/9b/Tire_tread.jpg','10');

SELECT * FROM locations;
SELECT * FROM categories;
SELECT * FROM products;
