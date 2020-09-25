SELECT company_code, founder, lm, sm, m, e
FROM Company 
INNER JOIN (SELECT company_code, COUNT(DISTINCT lead_manager_code) as lm
FROM Lead_Manager
GROUP BY company_code) FOO USING (company_code)
INNER JOIN 
(SELECT company_code, COUNT(DISTINCT senior_manager_code) as sm
FROM Senior_Manager
GROUP BY company_code) AOO USING (company_code)
INNER JOIN 
(SELECT company_code, COUNT(DISTINCT manager_code) as m
FROM Manager
GROUP BY company_code) BOO USING (company_code)
INNER JOIN 
(SELECT company_code, COUNT(DISTINCT employee_code) as e
FROM Employee
GROUP BY company_code) COO USING (company_code)
ORDER BY company_code; 

