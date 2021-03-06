USE employees;

SHOW TABLES;
DESCRIBE employees;
SELECT * FROM employees;
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees Where first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';

# Find all employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date LIKE '199%';
# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';
# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';
