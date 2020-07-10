# ORDER BY LECTURE
# Used to order a query result set by specified column(s) in ascending or descending order

USE employees;

DESCRIBE employees;

# Get employees by first_name ascending
SELECT * FROM employees ORDER BY first_name;

# Get employees by last_name descending
SELECT * FROM employees ORDER BY last_name DESC;

# Get employee names ordered by first_name descending and within duplicated first name results,
# order the result by last name ascending - do this by moving DESC after last_name
#if you add a where clause, it goes before the order-by clause.
SELECT first_name, last_name FROM employees
ORDER BY first_name DESC, last_name;


# first employee hired
SELECT * FROM employees ORDER BY hire_date;
# last employee hired
SELECT * FROM employees ORDER BY hire_date DESC;
# first female employee hired
SELECT * FROM employees WHERE gender = 'F' ORDER BY hire_date;
# highest current salary
# SELECT * FROM employees ORDER BY salary