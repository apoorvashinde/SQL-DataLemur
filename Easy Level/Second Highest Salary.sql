SELECT salary FROM employee WHERE salary <
(SELECT MAX(salary) FROM employee)
ORDER BY salary DESC
LIMIT 1