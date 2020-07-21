USE employees;

SHOW TABLES ;
DESCRIBE departments;
DESCRIBE employees;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE titles;
# psuedo code:  taking info from the describe tables:
    # SELECT dept_name FROM departments
    # CONCAT(employees.first_name, ' ', employees.last_name)
    # manager are connected to employees by emp_no
    # managers are connected to dept by dept_no

# curriculum code - returns full_name: dept_name at col titles and one guys name and his dept.
    # SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
    # FROM employees as e
    #          JOIN dept_emp as de
    #               ON de.emp_no = e.emp_no
    #          JOIN departments as d
    #               ON d.dept_no = de.dept_no
    # WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# Using the example in the Associative Table Joins section as a guide (above), write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name AS `Department Name`, CONCAT(employees.first_name, ' ', employees.last_name) AS `Manager`
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date LIKE '999%'
ORDER BY `Department Name`;
# first join :  joins dept manager table to employees table.  the join is by employee number
# second join:  joins departments to dept manger table via dept number
# the where clause filters out current managers from past
# the order clause alphabetizes the dept names.

# Instructor solution:

            SELECT departments.dept_name AS `Department Name`, CONCAT(employees.first_name, ' ',
                employees.last_name) AS `Manager`
            FROM departments
                 JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
                 JOIN employees ON employees.emp_no = dept_manager.emp_no
            WHERE dept_manager.to_date LIKE '999%'
            ORDER BY `Department Name`, Manager;


# 3. Find the name of all departments currently managed by women.

SELECT departments.dept_name AS `Department Name`, CONCAT(employees.first_name, ' ', employees.last_name) AS `Manager`
FROM employees
         JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date LIKE '999%' AND employees.gender = 'F'
ORDER BY `Department Name`;

# ===============================================================================================

# 4. Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title AS `Title`, COUNT(*) AS `Count`
FROM titles
    JOIN employees ON employees.emp_no = titles.emp_no
    JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE titles.title = 'Customer Service'
  AND dept_emp.to_date LIKE '999%'
ORDER BY `Title`, Count;



#instructor solution: if you run this in the command line you can see which is faster. which is this one
SELECT titles.title AS `Title`, COUNT(dept_emp.emp_no) AS `Count`
FROM departments
         JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
         JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service'
    AND titles.to_date LIKE '999%'
    AND dept_emp.to_date LIKE '999%'
GROUP BY `Title`;

# solution 2
SELECT titles.title AS `Title`, COUNT(dept_emp.emp_no) AS `Count`
FROM titles
         JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Customer Service'
  AND titles.to_date LIKE '999%'
  AND dept_emp.to_date LIKE '999%'
GROUP BY `Title`;


            # titles and employees join by employee number
            # dept_emp joins employee number to titles by emp_no
            # dept_emp joins employees to department by depart_no
# ============================================================================================

# 5. Find the current salary of all current managers.
#instructor solution:
SELECT departments.dept_name AS `Department Name`, CONCAT(employees.first_name, ' ', employees.last_name) AS `Employee`, salaries.salary AS `Salary`
FROM departments
         JOIN dept_manager  ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON employees.emp_no = dept_manager.emp_no
        JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date LIKE '999%'
  AND salaries.to_date LIKE '999%'
ORDER BY `Department Name`;


# Bonus
select concat(employees.first_name, ' ', employees.last_name) AS `Employee Name`, departments.dept_name AS `Department Name`, CONCAT()  look at picutre .
