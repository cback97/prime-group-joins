  -- 1. Get all the customers and their addresses
  SELECT * FROM customers
  JOIN addresses ON customers.id = addresses.customer_id;

  -- 2. Get all orders and their line items (orders, quantity and product).
  SELECT orders.id, line_items.quantity, line_items.product_id FROM orders
  JOIN line_items ON orders.id=line_items.id;

  -- 3. Which warehouses have cheetos?
  SELECT warehouse.warehouse, warehouse_product.on_hand FROM warehouse_product
    JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
    JOIN products ON products.id = warehouse_product.product_id
    WHERE warehouse_product.product_id = 5;
  
  -- 4. Which warehouses have diet pepsi?
  SELECT warehouse.warehouse, warehouse_product.on_hand FROM warehouse_product
	JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
	JOIN products ON products.id = warehouse_product.product_id
	WHERE warehouse_product.product_id = 6;
  
  -- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
  SELECT customers.first_name, customers.last_name, COUNT(orders.address_id) FROM customers
  JOIN addresses ON addresses.customer_id=customers.id
  JOIN orders ON orders.address_id=addresses.customer_id
  GROUP BY customers.first_name, customers.last_name, orders.address_id;
  
  -- 6. How many customers do we have?
  
  
  -- 7. How many products do we carry?
  
  
  -- 8. What is the total available on-hand quantity of diet pepsi?
