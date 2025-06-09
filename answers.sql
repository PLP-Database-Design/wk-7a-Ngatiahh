--Question 1 : Achieving 1NF
CREATE TABLE IF NOT EXISTS Orders(
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS OrderProducts(
  OrderID INT PRIMARY KEY,
  Products VARCHAR(50)
);


--Question 2 :Achieving 2NF
CREATE TABLE IF NOT EXISTS Orders(
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS OrderQuantities(
  OrderID INT PRIMARY KEY,
  Product VARCHAR(50),
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
