-- 1. Employee Details: Write a query to retrieve the full name (first name and last name concatenated), email, and phone number of all employees.
SELECT CONCAT(first_name,' ',last_name) AS employees_full_name, 
email, 
phone_number 
FROM employees;

-- 2. Department Locations: List the names of all departments and the city they are located in.
SELECT d.department_name, l.city FROM departments d
JOIN locations l ON d.location_id = l.location_id;

-- 3. High Earners: Find the first name, last name, and salary of all employees who earn more than $15,000.
SELECT first_name, last_name, salary 
FROM employees
WHERE salary > 15000 ;

-- 4. Recent Hires: Retrieve the details of all employees who were hired in the year 1999 or later.
SELECT CONCAT(first_name,' ',last_name) AS employees_full_name, 
hire_date 
FROM employees
WHERE hire_date >= '1999-01-01';

-- 5.Employees in India: List the full names of all employees who work in a location with the country ID 'IN'.
SELECT CONCAT(e.first_name, ' ',e.last_name) AS employees_full_name, 
l.country_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE l.country_id = 'IN';

-- 6. Department Employee Count: Write a query to show the number of employees in each department. The result should display the department name and the corresponding employee count, ordered from the most populated department to the least.
SELECT COUNT(e.first_name) as count_of_employees, d.department_name FROM employees e
JOIN departments d ON  e.department_id = d.department_id
GROUP BY  d.department_name
ORDER BY count_of_employees DESC;

-- 7. Average Salary by Job ID: Calculate the average salary for each job_id. Display the job_id and the calculated average salary.
SELECT job_id, 
ROUND(AVG(salary),2) AS avg_salary FROM employees
GROUP BY job_id
ORDER BY avg_salary DESC; 

-- 8. Manager-Employee List: Create a list showing each employee's full name and their manager id. Label the columns as "Employee Name" and "Manager ID". Include employees who do not have a manager.
SELECT manager_id AS "Manager ID", 
CONCAT(first_name,' ', last_name) AS "Employee Name" 
FROM employees;

-- 9. Department with Highest Average Salary: Identify the department that has the highest average salary among all departments. Display the department name and its average salary.
SELECT ROUND(AVG(e.salary),2) AS highest_average_salary, d.department_name from departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY  d.department_name
ORDER BY highest_average_salary DESC 
LIMIT 1;

-- 10. Salary Growth: Using the emp_payment table, find the difference between the most recent and the earliest salary paid for the employee with employee_id = 81.
SELECT employee_id, 
MAX(salary) - MIN(salary) AS salary_difference FROM emp_payment
WHERE employee_id = 81;

-- 11. Salary Rank by Department: Write a query to rank employees within each department based on their salary in descending order. The output should include the employee's full name, department name, salary, and their rank.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_name, 
d.department_name , 
e.salary,  
RANK() OVER(PARTITION BY d.department_name ORDER BY salary) AS rnk
FROM employees e
JOIN departments d ON e.department_id = d.department_id
ORDER BY d.department_name, rnk;

-- 12. Second Highest Salary: Find the employee (or employees) with the second-highest salary in the entire company.
SELECT CONCAT(first_name, ' ',last_name) AS employee_name, salary FROM employees
WHERE salary = ( 
SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees)
);

-- 13. Employee Tenure: Calculate the tenure of each employee in the company in years and months. The result should show the employee's full name, hire date, and their tenure.
SELECT CONCAT(first_name,' ',last_name) AS employee_name, 
hire_date, 
TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS years,
TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) % 12 AS months
FROM employees;

-- 14. Subquery for Salary Comparison: Find the names of all employees who earn more than the average salary of all employees in the 'Sales' department.
SELECT CONCAT(e.first_name,' ',e.last_name) AS employee_name, 
e.salary
FROM employees e
WHERE e.salary >(
SELECT AVG(salary) FROM employees e2
JOIN departments d ON e2.department_id = d.department_id
WHERE d.department_name = 'Sales'
);

-- 15. Conditional Salary Hike Projection: Write a query to project a potential salary hike. Display the employee's full name, current salary, and a new column new_salary. The new_salary should be calculated based on the following conditions:
         -- Employees with job_id 'SA_MAN' get a 15% raise.
         -- Employees with job_id 'IT_PROG' get a 10% raise.
         -- All other employees get a 5% raise. 
 SELECT CONCAT(first_name, ' ', last_name) AS employee_full_name, 
 salary AS current_salary,
 CASE
    WHEN job_id = 'SA_MAN' THEN salary * 1.15
    WHEN job_id = 'IT_PROG' THEN salary * 1.10
    ELSE SALARY * 1.05
 END AS new_salary
 FROM employees
    


