-- ------------------------------------------------------
-- Store Procedure to delete a record and show the confirmation
-- ------------------------------------------------------

DELETE PROCEDURE IF EXISTS CancelOrder;

DELIMITER //

CREATE PROCEDURE CancelOrder(INOUT cancelledOrder INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = cancelledOrder;
    SELECT CONCAT("Order", " ", OrderID, " ", "Is Cancelled")
    INTO cancelledOrder
    FROM Orders
    WHERE OrderID = cancelledOrder;
END//
DELIMITER ;