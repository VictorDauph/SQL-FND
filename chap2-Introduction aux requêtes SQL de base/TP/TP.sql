CREATE DATABASE tp1;

USE tp1;

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    status VARCHAR(20) DEFAULT 'en cours'CHECK (status IN ('en cours', 'expédié', 'livré')),
    price DECIMAL(10, 2) NOT NULL
);


INSERT INTO orders (customer_id, product_id, order_date, quantity, status, price) VALUES
(1, 2, '2024-01-15 14:30:00', 3, 'en cours', 499.99),
(2, 1, '2024-01-16 09:00:00', 2, 'expédié', 799.99),
(3, 4, '2024-01-17 11:15:00', 1, 'en cours', 150.00),
(4, 3, '2024-01-18 13:45:00', 4, 'livré', 299.99),
(1, 5, '2024-01-19 16:30:00', 5, 'expédié', 80.00),
(2, 6, '2024-01-20 10:00:00', 10, 'en cours', 99.99),
(3, 7, '2024-01-21 12:00:00', 6, 'livré', 200.00),
(5, 8, '2024-01-22 15:30:00', 2, 'en cours', 149.99),
(4, 9, '2024-01-23 08:15:00', 8, 'expédié', 450.00),
(1, 10, '2024-01-24 17:45:00', 4, 'en cours', 320.00);


ALTER TABLE orders
ADD COLUMN is_returned BOOLEAN DEFAULT FALSE;



SELECT id, status, quantity, order_date
    -> FROM orders
    -> WHERE status = 'en cours'
    -> ORDER BY order_date;




SELECT 
    UPPER(SUBSTRING(status, 1, 1)) AS status_initial,
    SUBSTRING(order_date, 1, 10) AS short_order_date
FROM 
    orders
WHERE 
    status = 'expédié';




SELECT 
    id, 
    customer_id, 
    product_id, 
    order_date, 
    quantity, 
    status, 
    price,
    CEIL(price) AS rounded_price
FROM 
    orders
WHERE 
    price BETWEEN 100 AND 250;



SELECT 
    id, 
    customer_id, 
    product_id, 
    status 
FROM 
    orders 
WHERE 
    (product_id IN (1, 2, 3) AND status = 'en cours') 
    OR (quantity > 3 AND is_returned = FALSE);
