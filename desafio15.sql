DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(cargo VARCHAR(100))
BEGIN
SELECT j.JOB_TITLE, ROUND(AVG(e.SALARY), 2)  FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo
GROUP BY j.JOB_TITLE;
END $$

DELIMITER ;
