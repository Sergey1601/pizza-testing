-- Проверка всех заказов
SELECT *
FROM orders;

-- Проверка товаров в каталоге
SELECT *
FROM products;

-- Проверка заказанных товаров
SELECT orders.order_id, order_items.product_id, order_items.quantity
FROM orders
JOIN order_items
ON orders.order_id = order_items.order_id;

-- Проверка количества товаров в заказе
SELECT order_id, COUNT(product_id) AS products_count
FROM order_items
GROUP BY order_id;
