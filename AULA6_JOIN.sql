SELECT FirstName, LastName, BirthDate FROM Employees
WHERE BirthDate BETWEEN '1950-01-01' AND '1959-12-31';

SELECT FirstName, LastName, BirthDate FROM Employees
WHERE BirthDate >= '1950-01-01' AND BirthDate <= '1959-12-31';

SELECT CompanyName, ContactTitle, City, Country 
FROM Customers
WHERE Country IN ('Mexico', 'Brazil')
AND City <> 'Rio de Janeiro'
AND (ContactTitle = 'Owner' OR ContactTitle = 'Sales Representative');

SELECT CompanyName, ContactTitle, City, Country 
FROM Customers
WHERE ContactTitle LIKE '[M-O]%';

SELECT CompanyName, ContactTitle, City, Country, Fax
FROM Customers
WHERE fax IS NULL;

SELECT s.SupplierID, p.SupplierID, p.ProductName, s.CompanyName 
FROM Suppliers AS s
JOIN Products AS p ON s.SupplierID = p.SupplierID
ORDER BY s.SupplierID;

SELECT s.SupplierID, s.CompanyName, p.ProductName, 
	c.CategoryName, p.UnitPrice 
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Produce' 
AND s.CompanyName LIKE 'G%';

SELECT a.EmployeeID,
CONCAT (b.LastName,' ' , b.FirstName ) as manager,
CONCAT (a.LastName, ' ' ,a.FirstName )as employee
FROM employees a
LEFT JOIN employees b ON b.EmployeeID = a.ReportsTo
ORDER BY a.EmployeeID;



SELECT p.SupplierID FROM Suppliers AS p 
ORDER BY p.SupplierID;
