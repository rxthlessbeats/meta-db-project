use littlelemondb;
DROP PROCEDURE IF EXISTS GetMaxQuantity;
-- GetMaxQuantity Procedure
DELIMITER //
CREATE PROCEDURE GetMaxQuantity(OUT max_quantity INT)
BEGIN
    SELECT MAX(Quantity) INTO max_quantity FROM OrdersFact;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS ManageBooking;
-- ManageBooking Procedure (For simplicity, let's assume it's for adding a booking)
DELIMITER //
CREATE PROCEDURE ManageBooking(IN order_id VARCHAR(50), IN customer_key INT)
BEGIN
    INSERT INTO OrdersFact(OrderID, CustomerKey) VALUES (order_id, customer_key);
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS UpdateBooking;
-- UpdateBooking Procedure
DELIMITER //
CREATE PROCEDURE UpdateBooking(IN order_id VARCHAR(50), IN new_customer_key INT)
BEGIN
    UPDATE OrdersFact SET CustomerKey = new_customer_key WHERE OrderID = order_id;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS AddBooking;
-- AddBooking Procedure
DELIMITER //
CREATE PROCEDURE AddBooking(IN order_id VARCHAR(50), IN customer_key INT)
BEGIN
    INSERT INTO OrdersFact(OrderID, CustomerKey) VALUES (order_id, customer_key);
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS CancelBooking;
-- CancelBooking Procedure
DELIMITER //
CREATE PROCEDURE CancelBooking(IN order_id VARCHAR(50))
BEGIN
    DELETE FROM OrdersFact WHERE OrderID = order_id;
END //
DELIMITER ;