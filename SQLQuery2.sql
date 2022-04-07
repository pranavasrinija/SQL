use OrderDb;

use Customer;
Select * from Customer;


SELECT * FROM Customer WHERE Country= 'GERMANY';

update Orders
set OrderDate='20220402'
where OrderId=123;

SELECT * FROM Customer 
WHERE FaxNumber like '[+]%'or FaxNumber like '%-%';

SELECT * FROM Customer
WHERE LastName LIKE '%U';

SELECT * FROM OrderItem
WHERE UnitPrice > 10 AND UnitPrice < 20;

SELECT OrderDate AS SHIPPING_DATE 
FROM Order
ORDER BY OrderDate ASC;


SELECT ShipName FROM Ordertable
WHERE ShipName ='La corned abondance' AND OrderDate BETWEEN '2022-04-02' AND '2022-04-05' 
ORDER BY OrderDate ASC;

SELECT * FROM ProductTable
WHERE Package ='EXOTIC LIQUIDS';


SELECT AVG(QUANTITY) AS Avg_Quantity
FROM OrderItem
GROUP BY ProductId;


SELECT ShipCompany, ShipName
From ShippingTable
Where Operational = 'yes';

SELECT E.NAME AS EMPLOYEE_NAME,M.NAME AS MANAGER_NAME
FROM Employee E JOIN Employee M
ON E.MANAGER=M.MANAGER;

SELECT OI.OrderId,P.ProductName,P.Category,P.Discount
FROM ProductTable P INNER JOIN OrderItemTable OI
ON P.ProductId=OI.ProductId;


SELECT SUM(UnitPrice) As Total,CompanyName 
FROM ProductTable 
GROUP BY ProductSupplied
having ProductSupplied ='exotic liquids' and UnitPrice >50;




