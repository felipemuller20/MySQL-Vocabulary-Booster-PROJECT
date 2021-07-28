SELECT CONCAT(empl.FIRST_NAME, " ", empl.LAST_NAME) AS `Nome completo`, jobhis.START_DATE AS `Data de início do cargo`, empl.SALARY AS `Salário` FROM hr.employees AS empl INNER JOIN hr.job_history AS jobhis ON jobhis.EMPLOYEE_ID = empl.EMPLOYEE_ID WHERE MONTH(jobhis.START_DATE) = 1 OR MONTH(jobhis.START_DATE) = 2 OR MONTH(jobhis.START_DATE) = 3 ORDER BY `Nome completo`;