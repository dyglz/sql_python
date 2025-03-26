SELECT employee.name, employee.surname, project.name AS project_name
FROM employee
JOIN project
ON employee.project_id = project.id;

SELECT employee.name, employee.surname, project.name AS project_name
FROM employee
JOIN project ON employee.project_id = project.id
WHERE project.name = 'Gallery'

SELECT *
FROM employee
JOIN project ON employee.project_id = project.id
JOIN department ON employee.department_id = department.id
WHERE project.name = 'Project Management' AND department.name='Sales'

SELECT department.name AS department_name, COUNT (*) AS employee_count
FROM employee 
JOIN department ON employee.department_id = department.id
GROUP BY department_id
ORDER BY COUNT(*) DESC

SELECT department.name AS department_name, COUNT (*)  AS employee_count
FROM employee 
JOIN department ON employee.department_id = department.id
GROUP BY department_id
HAVING COUNT(*) >= 5
ORDER BY COUNT(*) DESC

SELECT employee.name, employee.surname, employee.position, department.name AS department_name
FROM employee
JOIN department ON employee.department_id = department.id
WHERE position != 'Director'

INSERT INTO employee
	    (name, surname, social_security_number, start_date)
VALUES('Frank', 'Lewis', '523847291', '2009-11-12');

SELECT * FROM employee

SELECT employee.name, employee.surname, department.name AS department_name
FROM employee
LEFT JOIN department ON employee.department_id = department.id

SELECT employee.name, employee.surname, project.name AS project_name
FROM employee
JOIN project ON employee.project_id = project.id
WHERE employee.project_id IN (
	SELECT project_id
	FROM employee
	GROUP BY project_id
	HAVING COUNT(employee.id) > 4);
	
ALTER TABLE employee ADD COLUMN base_plus_bonuses REAL;

UPDATE employee SET base_plus_bonuses = base_salary + bonuses;

SELECT SUM(base_salary) AS total_salaries, 
	SUM(bonuses) AS total_bonuses, 
	MAX(base_salary) AS max_salary,
	MIN(base_salary) AS min_salary,
	AVG(base_salary) AS avg_salary
FROM employee;
