-- --------------------------------------------------------
-- Procedure to add a record into Bookings table
-- --------------------------------------------------------

DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //

CREATE PROCEDURE AddBooking(IN Bid INT, IN Tnumber INT, IN Cid INT, IN Bdate DATE)
BEGIN
INSERT INTO Bookings (BookingID, TableNumber, CustomerID, BookingDate) VALUES (Bid, Tnumber, Cid, Bdate);
SELECT CONCAT("New booking added") AS Confirmation;
END //

DELIMITER ;  