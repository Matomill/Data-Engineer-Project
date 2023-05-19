-- ------------------------------------------------------
-- Prepared Statement to get a specific order detail
-- ------------------------------------------------------

PREPARE GetOrderDetail FROM '
SELECT OrderID, Quantity, TotalCost
FROM Orders
WHERE OrderID = ?';

-- SET @id = [some value];
-- EXECUTE GetOrderDetails USING @id;