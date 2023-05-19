-- ------------------------------------------------------
-- Procedure to if a table is booking by date
-- ------------------------------------------------------

DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //

CREATE PROCEDURE AddValidBooking(IN bDate DATE, tNumber INT)
BEGIN
DECLARE total_row INT DEFAULT 0;
START TRANSACTION;
INSERT INTO Bookings (BookingDate, TableNumber, CustomerID) VALUES (BookingDate, tableNumber, 1);
SET total_row = (SELECT COUNT(BookingID) FROM Bookings WHERE BookingDate = bDate AND TableNumber = tNumber);
IF total_row = 2 THEN
	ROLLBACK;
	SELECT CONCAT("Table ", tNumber, " is already booked - booking cancelled") FROM Bookings AS BookingStatus;
ELSE    
	COMMIT;
END IF;
END //

DELIMITER ;
