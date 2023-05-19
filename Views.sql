-- -------------------------------------------------------
-- Create view - More than two orders.
-- -------------------------------------------------------

CREATE VIEW IF NOT EXISTS MoreThanTwoOrders AS
SELECT MenuName
FROM Menu
WHERE MenuID = ANY (SELECT MenuID FROM Orders WHERE Quantity > 2); 

-- -------------------------------------------------------
-- Create view - Orders with a cost grather than $150
-- -------------------------------------------------------

CREATE VIEW IF NOT EXISTS OrdersWithCostGratherThan AS
SELECT Customers.CustomerID, Customers.CustomerName, Orders.TotalCost, Menu.MenuName, Items.Courses
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Menu
ON Orders.MenuID = Menu.MenuID
INNER JOIN Items
ON Menu.ItemID = Items.ItemID
WHERE Orders.TotalCost > 150; 

-- ------------------------------------------------------
-- Create view - Orders with a quantity greater than 2
-- ------------------------------------------------------

CREATE VIEW IF NOT EXISTS OrdersView AS SELECT OrderID, Quantity, TotalCost FROM Orders WHERE Quantity > 2;