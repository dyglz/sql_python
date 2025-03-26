SELECT * FROM employees

SELECT birthdate FROM employees

SELECT name, surname, position FROM employees

SELECT DISTINCT department FROM employees

SELECT * FROM employees WHERE department='Production'

SELECT position FROM employees WHERE name='George'

SELECT * FROM employees WHERE birthdate='1986-09-19'

SELECT * FROM employees WHERE surname='Baker'

SELECT name, surname FROM employees WHERE position='Programmer' AND department='Production'

INSERT INTO employees
    (name, surname, birthdate, position, department)
VALUES
    ('Anthony', 'Champagne', DATE('1979-02-02'), 'Tester', 'Production');

INSERT INTO employees
	    (name, surname, birthdate)
VALUES('Arnold', 'Smith', DATE('1996-02-02'));

UPDATE employees SET position='Tester', department='Finance' WHERE name='Arnold' AND surname='Smith'

DELETE FROM employees WHERE birthdate='1996-02-02'

INSERT INTO employees
    (name, surname, birthdate, position, department)
VALUES
    ('Anthony', 'Mitchell', DATE('1981-02-03'), 'Manager', 'Sales');
	
INSERT INTO employees
    (name, surname, birthdate, position, department)
VALUES
	('Anthony', 'Mitchell', DATE('1987-04-02'), 'Director', 'Sales');
	
UPDATE employees SET position='Tester' WHERE surname='Mitchell'

SELECT COUNT(*) FROM employees WHERE position='Tester'

