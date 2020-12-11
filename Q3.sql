SELECT m.dept_no,
	   departments.dept_name,
	   m.emp_no,
	   employees.last_name,
	   employees.first_name
FROM dept_manager as m
INNER JOIN departments ON m.dept_no = departments.dept_no
INNER JOIN employees ON m.emp_no = employees.emp_no;