DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Contact VARCHAR(50),
    Country VARCHAR(30));
INSERT INTO Customers (CustomerID, CustomerName, Contact, Country) VALUES
(1, 'Aaron Ortega', 'aaron@email.com', 'USA'),
(2, 'Amora Singh', 'amora@email.com', 'India'),
(3, 'Andrew Jordan', 'andrew@email.com', 'UK'),
(4, 'Alice Brown', 'alice@email.com', 'Canada'),
(5, 'Arora Khan', 'arora@email.com', 'UAE');
DROP TABLE IF EXISTS Products;
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2));
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(101, 'Laptop Pro', 'Electronics', 1200),
(102, 'Organic Rice', 'Food', 25),
(103, 'Smartwatch X', 'Electronics', 300),
(104, 'Herbal Oil', 'Health', 15),
(105, 'Gaming Console', 'Electronics', 500);
DROP TABLE IF EXISTS Exports;
CREATE TABLE IF NOT EXISTS Exports (
    ExportID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    ExportCountry VARCHAR(30),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
INSERT INTO Exports (ExportID, CustomerID, ProductID, ExportCountry) VALUES
(201, 1, 101, 'USA'),
(202, 3, 104, 'UK'),
(203, 4, 103, 'Canada'),
(204, 2, 105, 'India'),
(205, 5, 102, 'UAE');
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Exports;
SELECT c.CustomerName, p.ProductName, e.ExportCountry
FROM Customers c
JOIN Exports e ON c.CustomerID = e.CustomerID
JOIN Products p ON e.ProductID = p.ProductID
WHERE c.CustomerName LIKE 'a%' AND c.CustomerName LIKE '%or%';