USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
FROM employees AS emp
INNER JOIN jobs AS job ON emp.JOB_ID = job.JOB_ID
WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;
