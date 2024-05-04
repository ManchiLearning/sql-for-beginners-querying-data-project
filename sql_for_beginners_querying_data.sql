-- Query File: sql_for_beginners_querying_data.sql
-- Author: Manchi Learning
-- Last Updated:: May 03, 2024

-- Description:
-- This file includes the content and queries presented in the guided project 
-- 'SQL for Beginners: Querying Data' from the Coursera Project Network.

-- Queries Included:


-- Task #1: Use SELECT Statements to select columns

SELECT * FROM Shippers

SELECT COUNT(*) FROM Shippers

SELECT COUNT(*) AS NumberOfRows
FROM Shippers

SELECT CategoryName, Description
FROM Categories

-- Task #2: Use the WHERE clause to apply conditions

SELECT FirstName, LastName, HireDate
FROM Employees
WHERE Title = 'Sales Representative'

SELECT FirstName, LastName, HireDate
FROM Employees
WHERE Title = 'Sales Representative' AND Country = 'USA'

SELECT FirstName, LastName, HireDate, Title, Country
FROM Employees
-- WHERE Title = 'Sales Representative' AND Country = 'USA'

SELECT FirstName, LastName, HireDate, Title, Country
FROM Employees
WHERE Title = 'Sales Representative' AND Country = 'USA'

SELECT OrderID, OrderDate
FROM Orders
WHERE EmployeeID = 5

SELECT SupplierID, ContactName, ContactTitle
FROM Suppliers

SELECT SupplierID, ContactName, ContactTitle
FROM Suppliers
WHERE ContactTitle != 'Marketing Manager'

SELECT OrderID
FROM Orders
WHERE ShipCountry in ('France', 'Belgium')

SELECT OrderID, ShipCountry
FROM Orders
WHERE ShipCountry in ('France', 'Belgium')

SELECT OrderID, ShipCountry
FROM Orders
WHERE ShipCountry = 'France' OR ShipCountry = 'Belgium'

SELECT ProductID, ProductName
FROM Products
WHERE ProductName LIKE '%queso%'

-- Task #3: Apply GROUP BY to group data by columns

SELECT Country
FROM Customers
GROUP BY Country

SELECT Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country

SELECT Country, COUNT(CustomerID) AS NumbersOfCustomers
FROM Customers
GROUP BY Country

SELECT Country, City, COUNT(CustomerID) AS NumbersOfCustomers
FROM Customers
GROUP BY Country, City

SELECT Country, City, COUNT(CustomerID) AS NumbersOfCustomers
FROM Customers
GROUP BY Country, City
ORDER BY NumbersOfCustomers ASC

SELECT Country, City, COUNT(CustomerID) AS NumbersOfCustomers
FROM Customers
GROUP BY Country, City
ORDER BY NumbersOfCustomers DESC

-- Cumulative Challenge

-- 1. Retrieve all orders made by a specific customer whose CustomerID is 'ALFKI'

SELECT *
FROM Orders
WHERE CustomerID = 'ALFKI'

-- 2.Retrieve all orders made in a specific year 1997. 
-- (Use the SQL function YEAR() to access the year of OrderDate)

SELECT *
FROM Orders
WHERE YEAR(OrderDate) = 1997


-- 3.Retrieve the total number of orders for each customer.

SELECT CustomerID, COUNT(CustomerID) AS NumberOfOrders
FROM Orders
GROUP BY CustomerID

-- 4. Retrive the ProductID, Sum of Orders by ProductID and the TotalOrderAmount 
-- as the SUM of UnitPrice and Quantity

SELECT ProductID, COUNT(OrderID) AS CountOFOrders, 
SUM(UnitPrice * Quantity) AS TotalOrderAmount
FROM [Order Details]
GROUP BY ProductID


-- Notes/Comments:

/*

During your journey through this guided project, you may notice variations 
in the code and annotations. These adjustments are made to enhance 
comprehension and facilitate successful execution.

A special thank you to Emmanuel Segui and the Coursera Project Network for 
providing this invaluable learning resource. Please don't hesitate to reach 
out with any comments or questions regarding this file. Happy learning!

Feel free to connect with me on LinkedIn at https://www.linkedin.com/in/gerdlp/
for further discussions or feedback.

*/

