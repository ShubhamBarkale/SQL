CREATE DATABASE ecommerce_db;
use ecommerce_db;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    city VARCHAR(50),
    status VARCHAR(20)
);
DESCRIBE products;
SHOW TABLES;
INSERT INTO products
(product_id, product_name, category, brand, price, quantity, city, status)
VALUES
(201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available'),
(202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available'),
(203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available'),
(204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available'),
(205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available'),
(206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');

INSERT INTO products
(product_id, product_name, category, brand, price, quantity, city, status)
VALUES
(207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available'),
(208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available'),
(209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available'),
(210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');

SELECT * FROM products;
SELECT product_name FROM products;
SELECT product_name, price FROM products;
SELECT product_name, category, brand, price FROM products;
SELECT * FROM products WHERE city = 'Pune';
SELECT * FROM products WHERE city = 'Mumbai';
SELECT * FROM products WHERE category = 'Laptop';
SELECT * FROM products WHERE price > 30000;
SELECT * FROM products WHERE price < 30000;
SELECT * FROM products WHERE price = 35000;
SELECT * FROM products WHERE price >= 45000;
SELECT * FROM products WHERE price <= 30000;
SELECT * FROM products WHERE quantity < 10;


SELECT * FROM products WHERE city = 'Pune'AND category = 'Mobile';
SELECT * FROM products WHERE city = 'Mumbai' AND status = 'Available';
SELECT * FROM products WHERE price > 30000 AND quantity > 5;
SELECT * FROM products WHERE city = 'Pune' OR city = 'Mumbai';
