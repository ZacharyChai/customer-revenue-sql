
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  signup_date DATE,
  region TEXT
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name TEXT,
  category TEXT,
  price NUMERIC
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  order_total NUMERIC,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  line_total NUMERIC,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
