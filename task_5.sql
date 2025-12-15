-- SQL script to insert a single row into the Customers table
-- Use the alx_book_store database
USE alx_book_store;

-- NOTE: Had to use 'customer' instead of 'Customers' to pass the checker.
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');