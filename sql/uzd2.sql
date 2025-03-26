SELECT name, surname, birthdate, social_security_number FROM employee WHERE birthdate='1988-07-20'

SELECT social_security_number, start_date FROM employee WHERE start_date BETWEEN '2009-10-30' AND '2012-11-11'

SELECT name, department_id, project_id FROM employee WHERE department_id IN (2, 3)

SELECT * FROM employee WHERE birthdate LIKE '____-__-12';

SELECT * FROM project WHERE name LIKE '_a%';

SELECT * FROM employee WHERE position IS NULL
SELECT * FROM employee

SELECT name, surname, start_date, position FROM employee WHERE start_date > '2011-02-11' AND position='Programmer'

SELECT name, surname, department_id, project_id FROM employee WHERE department_id IS 2 OR project_id IS 1

SELECT name FROM employee WHERE name NOT LIKE 'A%'

SELECT name, surname, start_date FROM employee ORDER BY start_date

SELECT name, surname, start_date FROM employee ORDER BY start_date DESC

SELECT MIN(project_id), MAX(project_id) FROM employee 

SELECT project_id, COUNT (*) FROM employee GROUP BY project_id ORDER BY COUNT(*) DESC;

SELECT project_id, COUNT (*) FROM employee GROUP BY project_id HAVING COUNT(*) >= 3 ORDER BY COUNT(*) DESC;

SELECT project_id, position, COUNT(*) FROM employee  WHERE position='Programmer' GROUP BY project_id ORDER BY COUNT(*);

