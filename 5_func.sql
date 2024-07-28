DELIMITER //
DROP FUNCTION IF EXISTS Divide;

CREATE FUNCTION Divide(param_1 FLOAT, param_2 FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    IF param_2 = 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: dividing by zero is not allowed';
	ELSE
		SET result = param_1 / param_2;
	END IF;
    RETURN result;
END //

DELIMITER ;