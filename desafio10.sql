-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
SELECT p.ProductName AS `Produto`,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.ProductID = p.ProductID
GROUP BY `Produto`
HAVING ROUND(AVG(Quantity), 2) > 20.00
ORDER BY `Média`, `Produto`;
