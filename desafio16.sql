USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(25))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE quantity DOUBLE;
SELECT  COUNT(jh.employee_ID) FROM job_history AS jh
	INNER JOIN employees AS e
	WHERE e.employee_ID = jh.employee_ID AND e.email LIKE CONCAT('%', email, '%')
	INTO quantity;
RETURN quantity;
END $$
DELIMITER ;
