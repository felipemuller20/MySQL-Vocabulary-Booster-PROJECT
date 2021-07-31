USE w3schools;
DELIMITER $$

CREATE TRIGGER upadate_date 
BEFORE UPDATE ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER ;
