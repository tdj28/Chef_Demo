CREATE DATABASE demo;
GRANT USAGE ON *.* TO demouser@localhost IDENTIFIED BY 'xxxxxx';
GRANT ALL PRIVILEGES ON demo.* TO demouser;
USE demo;
CREATE TABLE products
 (id INTEGER NOT NULL,
 name VARCHAR(25) NOT NULL,
 manufacturer VARCHAR(25) NOT NULL,
 quantity_in_house INTEGER NOT NULL,
 minimum_to_stock INTEGER NOT NULL,
 maximum_to_stock INTEGER NOT NULL,
 cost_per_unit FLOAT NOT NULL,
 retail_per_unit FLOAT NOT NULL,
 not_discontinued ENUM('T','F') NOT NULL); 
INSERT INTO products (id, name, manufacturer, quantity_in_house,minimum_to_stock,maximum_to_stock,cost_per_unit,retail_per_unit,not_discontinued) VALUES(1000,'iTab','Plum Inc.', 432, 350, 1200, 335.25, 499.99, 'T');
INSERT INTO products (id, name, manufacturer, quantity_in_house,minimum_to_stock,maximum_to_stock,cost_per_unit,retail_per_unit,not_discontinued) VALUES(1001,'Beats by Dru','BD Inc.', 132, 230, 500, 55.10, 99.99, 'T');
INSERT INTO products (id, name, manufacturer, quantity_in_house,minimum_to_stock,maximum_to_stock,cost_per_unit,retail_per_unit,not_discontinued) VALUES(1002,'Blue Soda','WW Industries', 32, 50, 200, 1.00, 3.99, 'F');
INSERT INTO products (id, name, manufacturer, quantity_in_house,minimum_to_stock,maximum_to_stock,cost_per_unit,retail_per_unit,not_discontinued) VALUES(1003,'Nebula S IV','Dangson Inc.', 552, 200, 500, 280.00, 399.99, 'T');
INSERT INTO products (id, name, manufacturer, quantity_in_house,minimum_to_stock,maximum_to_stock,cost_per_unit,retail_per_unit,not_discontinued) VALUES(1004,'eWatch','App-el Inc.', 2, 50, 100, 135.25, 249.99, 'T');
