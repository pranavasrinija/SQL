USE Customer;

SELECT * FROM Customer
WHERE Phone ='030-0074321';

SELECT * FROM ProductTable
WHERE CATEGORY ='SeaFood';

SELECT * FROM Customer
WHERE City NOT IN('LONDON');

SELECT * FROM ProductTable
WHERE ProductName ='CHAI';

SELECT E.NAME AS EMP_NAME , D.DeptName AS DEPT_NAME,E.RATING
FROM Employee E INNER JOIN Dept D
ON E.DEPTID=D.DEPTID;

