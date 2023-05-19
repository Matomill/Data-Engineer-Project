-- --------------------------------------------------------
-- Procedure to update the date of a specific booking
-- --------------------------------------------------------

DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN Bid INT, IN Bdate DATE)
BEGIN
UPDATE Bookings
SET BookingID = Bid, BookingDate = Bdate
WHERE BookingID = Bid;
SELECT CONCAT("Booking ", Bid, " updated") AS Confirmation;
END //

DELIMITER ;   