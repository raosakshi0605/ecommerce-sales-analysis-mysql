-- INSERTING DATA INTO TABLES

-- 12 customers
INSERT INTO customers VALUES
(1, 'Aarav Sharma', 'Delhi', '2025-11-10'),
(2, 'Priya Verma', 'Gurgaon', '2025-11-15'),
(3, 'Rohan Singh', 'Jaipur', '2025-12-01'),
(4, 'Ananya Gupta', 'Delhi', '2025-12-10'),
(5, 'Kabir Mehta', 'Noida', '2025-12-20'),
(6, 'Isha Patel', 'Gurgaon', '2026-01-05'),
(7, 'Arjun Rao', 'Mumbai', '2026-01-12'),
(8, 'Meera Joshi', 'Jaipur', '2026-01-20'),
(9, 'Dev Malhotra', 'Delhi', '2026-02-01'),
(10, 'Sana Khan', 'Noida', '2026-02-10'),
(11, 'Vikram Das', 'Mumbai', '2026-02-18'),
(12, 'Tara Kapoor', 'Pune', '2026-03-01');

-- 12 products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000.00),
(102, 'Smartphone', 'Electronics', 25000.00),
(103, 'Headphones', 'Electronics', 2500.00),
(104, 'Office Chair', 'Furniture', 8000.00),
(105, 'Study Desk', 'Furniture', 12000.00),
(106, 'Notebook Pack', 'Stationery', 300.00),
(107, 'Pen Set', 'Stationery', 150.00),
(108, 'Running Shoes', 'Fashion', 3500.00),
(109, 'Backpack', 'Fashion', 1800.00),
(110, 'Smart Watch', 'Electronics', 7000.00),
(111, 'Table Lamp', 'Furniture', 1200.00),
(112, 'Water Bottle', 'Lifestyle', 500.00);

-- 20 orders across three months
INSERT INTO orders VALUES
(1001, 1, '2026-01-03', 'Completed'),
(1002, 2, '2026-01-05', 'Completed'),
(1003, 3, '2026-01-08', 'Cancelled'),
(1004, 1, '2026-01-15', 'Completed'),
(1005, 4, '2026-01-18', 'Completed'),
(1006, 5, '2026-01-22', 'Pending'),
(1007, 6, '2026-01-25', 'Completed'),
(1008, 7, '2026-02-02', 'Completed'),
(1009, 2, '2026-02-05', 'Completed'),
(1010, 8, '2026-02-09', 'Completed'),
(1011, 9, '2026-02-12', 'Cancelled'),
(1012, 4, '2026-02-15', 'Completed'),
(1013, 10, '2026-02-20', 'Completed'),
(1014, 11, '2026-02-25', 'Pending'),
(1015, 1, '2026-03-02', 'Completed'),
(1016, 6, '2026-03-04', 'Completed'),
(1017, 7, '2026-03-08', 'Completed'),
(1018, 9, '2026-03-10', 'Completed'),
(1019, 10, '2026-03-15', 'Completed'),
(1020, 3, '2026-03-18', 'Completed');

-- 30 order items
INSERT INTO order_items VALUES
(1, 1001, 101, 1, 55000.00),
(2, 1001, 103, 2, 2500.00),
(3, 1002, 102, 1, 25000.00),
(4, 1002, 109, 2, 1800.00),
(5, 1003, 108, 1, 3500.00),
(6, 1004, 104, 1, 8000.00),
(7, 1004, 106, 5, 300.00),
(8, 1005, 105, 1, 12000.00),
(9, 1005, 111, 2, 1200.00),
(10, 1006, 110, 1, 7000.00),
(11, 1007, 102, 1, 25000.00),
(12, 1007, 103, 1, 2500.00),
(13, 1008, 101, 1, 55000.00),
(14, 1008, 110, 1, 7000.00),
(15, 1009, 104, 1, 8000.00),
(16, 1009, 112, 4, 500.00),
(17, 1010, 108, 2, 3500.00),
(18, 1010, 109, 1, 1800.00),
(19, 1011, 102, 1, 25000.00),
(20, 1012, 105, 1, 12000.00),
(21, 1012, 111, 1, 1200.00),
(22, 1013, 103, 3, 2500.00),
(23, 1013, 106, 10, 300.00),
(24, 1014, 101, 1, 55000.00),
(25, 1015, 102, 1, 25000.00),
(26, 1015, 103, 2, 2500.00),
(27, 1016, 104, 2, 8000.00),
(28, 1017, 110, 2, 7000.00),
(29, 1018, 109, 3, 1800.00),
(30, 1019, 105, 1, 12000.00);


SELECT 'customers' AS table_name, 
COUNT(*) AS total_rows
FROM customers

UNION ALL

SELECT 'products' ,
COUNT(*) FROM products

UNION ALL

SELECT 'orders' , COUNT(*) FROM orders

UNION ALL

SELECT 'order_items' , COUNT(*) FROM order_items;