SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name ORDER BY count(last_name) desc;