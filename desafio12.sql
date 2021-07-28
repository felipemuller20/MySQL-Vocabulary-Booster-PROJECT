SELECT
concat(e1.FIRST_NAME,' ',e1.LAST_NAME) AS 'Nome completo funcionário 1',
e1.SALARY 'Salário funcionário 1',
e1.PHONE_NUMBER 'Telefone funcionário 1',
concat(e2.FIRST_NAME,' ',e2.LAST_NAME) 'Nome completo funcionário 2',
e2.SALARY 'Salário funcionário 2',
e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e1, hr.employees AS e2
WHERE e1.JOB_ID = e2.JOB_ID 
AND concat(e1.FIRST_NAME,' ',e1.LAST_NAME) <> concat(e2.FIRST_NAME,' ',e2.LAST_NAME)
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
