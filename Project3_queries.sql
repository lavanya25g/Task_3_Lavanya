SELECT *
FROM Dataset_for_Data_Analytics
LIMIT 10;
SELECT COUNT(*) AS total_records
FROM Dataset_for_Data_Analytics;
PRAGMA table_info(Dataset_for_Data_Analytics);
SELECT OrderID, Product, OrderStatus
FROM Dataset_for_Data_Analytics
WHERE OrderStatus = 'Delivered'
LIMIT 10;
SELECT OrderID, Product, UnitPrice
FROM Dataset_for_Data_Analytics
ORDER BY UnitPrice DESC
LIMIT 10;
SELECT OrderStatus, COUNT(*) AS total_orders
FROM Dataset_for_Data_Analytics
GROUP BY OrderStatus
ORDER BY total_orders DESC;
SELECT
    Product,
    SUM(TotalPrice) AS total_sales
FROM Dataset_for_Data_Analytics
GROUP BY Product
ORDER BY total_sales DESC;
SELECT
    Product,
    AVG(TotalPrice) AS average_order_value
FROM Dataset_for_Data_Analytics
GROUP BY Product
ORDER BY average_order_value DESC;
SELECT
    COUNT(*) AS total_orders,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value
FROM Dataset_for_Data_Analytics;