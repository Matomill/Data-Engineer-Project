-- --------------------------------------------------------
-- Procedure to cancel a booking
-- --------------------------------------------------------

DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //

CREATE PROCEDURE CancelBooking(IN Bid INT)
BEGIN
DELETE FROM Bookings
WHERE BookingID = Bid;
SELECT CONCAT("Booking ", Bid, " cancelled") AS Confirmation;
END //

DELIMITER ;   