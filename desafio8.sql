SELECT 
customers.customerName AS 'Nome de contato', 
shippers.ShipperName AS 'Empresa que fez o envio',
orders.orderDate AS 'Data do pedido'
FROM w3schools.customers AS customers
INNER JOIN 
w3schools.orders AS orders 
ON orders.CustomerID = customers.CustomerID
INNER JOIN 
w3schools.shippers AS shippers
ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
