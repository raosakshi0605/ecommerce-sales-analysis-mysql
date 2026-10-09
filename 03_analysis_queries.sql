-- TOTAL REVENUE FROM COMPLETED ORDERS

SELECT ROUND(SUM(order_items.quantity * order_items.unit_price), 2) 
    AS total_revenue
FROM orders
JOIN order_items 
    ON orders.order_id = order_items.order_id
WHERE orders.status = 'Completed';


-- MONTHLY REVENUE

SELECT DATE_FORMAT(orders.order_date, '%Y-%m') 
    AS sales_month,
ROUND(SUM(order_items.quantity * order_items.unit_price), 2) 
    AS monthly_revenue 
FROM orders
JOIN order_items 
    ON orders.order_id = order_items.order_id
WHERE orders.status = 'Completed'
GROUP BY DATE_FORMAT(orders.order_date, '%Y-%m')
ORDER BY sales_month;


-- Category-wise revenue

SELECT products.category,
    SUM(order_items.quantity) AS total_units_sold,  
    SUM(order_items.quantity * order_items.unit_price) 
    AS category_revenue
FROM products
JOIN order_items 
    ON products.product_id = order_items.product_id
JOIN orders 
    ON order_items.order_id = orders.order_id
WHERE orders.status = 'Completed'
GROUP BY products.product_id, products.product_name
ORDER BY total_units_sold DESC
LIMIT 5;

-- Top 5 customers by spending

SELECT customers.customer_name,
    customers.city,
    SUM(order_items.quantity * order_items.unit_price)
    AS total_spending
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_items
    ON orders.order_id = order_items.order_id
WHERE orders.status = 'Completed'
GROUP BY customers.customer_id,
    customers.customer_name,
    customers.city
ORDER BY total_spending DESC
LIMIT 5;


-- CITY WISE REVENUE

SELECT customers.city,
    SUM(order_items.quantity * order_items.unit_price)
    AS city_revenue
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_items
    ON orders.order_id = order_items.order_id
WHERE orders.status = 'Completed'
GROUP BY customers.city
ORDER BY city_revenue DESC;


-- products with price > avg product price

SELECT product_id,
    product_name,
    price
FROM products
WHERE price > (SELECT AVG(price) FROM products)
ORDER BY price DESC;

SELECT orders.order_id,
    SUM(order_items.quantity * order_items.unit_price) AS order_value
FROM orders
JOIN order_items
    ON order_items.order_id = orders.order_id
WHERE orders.status = 'Completed'
GROUP BY orders.order_id
HAVING order_value > (
    SELECT AVG(order_total)
    FROM(
        SELECT orders.order_id,
            SUM(order_items.quantity * order_items.unit_price)
                AS order_total
        FROM orders
        JOIN order_items
            ON order_items.order_id = orders.order_id
        WHERE orders.status = 'Completed'
        GROUP BY orders.order_id
    )AS completed_order_totals
)
ORDER BY order_value DESC;


-- Ranking products based on revenue

SELECT products.product_name,
    SUM(order_items.quantity * order_items.unit_price) AS product_revenue,
    DENSE_RANK() OVER(ORDER BY SUM(order_items.quantity * order_items.unit_price) DESC)
        AS revenue_rank
FROM products
JOIN order_items
    ON products.product_id = order_items.product_id
JOIN orders
    ON order_items.order_id = orders.order_id
WHERE orders.status = 'Completed'
GROUP BY products.product_id, products.product_name
ORDER BY revenue_rank 