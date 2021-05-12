-- 1. Get all the customers and their addresses
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id;

-- 2.
