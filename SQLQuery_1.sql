-- Select all records from the customers table. 
SELECT * FROM Customers

--  Find all customers living in London or Paris 
SELECT * FROM Customers
WHERE City LIKE 'London'
OR City LIKE 'Paris'

-- Make a list of cities where customers are coming from. The list should not
-- have any duplicates or nulls. 


-- Show a sorted list of employees’ first names.
SELECT FirstName FROM Employees
ORDER BY FirstName

-- Find the average of employees’ salaries 
SELECT * FROM Employees 

--  Find a list of all employees who have a BA 
SELECT Notes FROM Employees
WHERE Notes LIKE '%BA%'

--  Get a list of all employees who got hired between 1/1/1994 and today
SELECT FirstName as [Employees Hired After 1/1/1994] FROM Employees
WHERE HireDate BETWEEN 1/1/1994 AND GETDATE()

--  Find how long employees have been working for Northwind (in years!) 
SELECT  DATEDIFF(year, HireDate, GETDATE()) as [Total Years Hired] FROM Employees

--  Get a list of all products sorted by quantity (ascending and descending
-- order) 
SELECT * FROM [Order Details]
ORDER BY Quantity ASC

SELECT * FROM [Order Details]
ORDER BY Quantity DESC

--  Find all products that are low on stock (quantity less than 6)
SELECT * from Products
WHERE UnitsInStock < 6

--  Find a list of all discontinued products. 
SELECT * from Products
WHERE Discontinued > 0

--  Find a list of all products that have Tofu in them. 
SELECT * from Products
WHERE ProductName LIKE '%tofu%'

-- Find the product that has the highest unit price. 
SELECT MAX(UnitPrice) FROM Products

-- Get a list of all employees who got hired after 1/1/1993 
SELECT FirstName AS [Employee Hired After 1/1/1993] FROM Employees
WHERE HireDate > 1/1/1993

-- Get all employees who have title : “Ms.” And “Mrs.” 
SELECT * FROM Employees
WHERE TitleOfCourtesy = 'Ms.' OR TitleOfCourtesy = 'Mrs.'

--  Get all employees who have a Home phone number that has area code
-- 206 
SELECT *  FROM Employees
WHERE HomePhone LIKE '(206)%'


