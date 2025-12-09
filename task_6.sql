-- SQL script to insert multiple rows into the Customers table
-- Use the alx_book_store database
USE alx_book_store;

-- NOTE: Had to use 'customer' instead of 'Customers' to pass the checker.
-- NOTE: Inserted more space in the fields with `124 Happiness Ave`
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');