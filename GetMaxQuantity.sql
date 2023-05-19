-- ------------------------------------------------------
-- Create Store Procedure to get the max quantity ordened
-- ------------------------------------------------------

CREATE PROCEDURE IF NOT EXISTS GetMaxQuantity()
SELECT Quantity AS Max_Quantity_in_Order
FROM Orders
ORDER BY Quantity LIMIT 1;