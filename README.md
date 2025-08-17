### SQL-Based Analysis of a Human Resources Database

#### Project Overview
This project is a comprehensive analysis of a sample Human Resources (HR) database. Its purpose is to answer critical business questions by querying the data, demonstrating a strong proficiency in SQL. The analysis covers various aspects of HR data, including employee demographics, salary distribution, departmental structure, and employee tenure.

This repository serves as a portfolio piece showcasing the ability to write clean, efficient, and complex SQL queries to extract meaningful insights from relational data.

#### Database Schema
The database consists of four interconnected tables that model a typical HR system.
- **`employees`**: The central table containing detailed information for each employee.
- **`departments`**: Contains information on all company departments.
- **`locations`**: Stores the physical location details for each office.
- **`emp_payment`**: A historical log of salary payments.

#### Entity-Relationship Diagram (ERD)
An ERD provides a visual representation of the database structure and relationships between tables.
(<img width="1415" height="805" alt="Untitled" src="https://github.com/user-attachments/assets/38165533-637c-4ba6-b799-6d09989ecaa4" />)

#### Tools and Technologies
- **Database**: MySQL
- **Language**: SQL

#### Analytical Questions / Business Questions
Here are the 15 business questions this analysis answers, along with the corresponding SQL queries.
1. Master Employee Contact List: How can we generate a complete contact list for all employees?
2. Departmental Locations: What are the physical locations (cities) of each department?
3.  Identifying High Earners: Which employees have a salary greater than $15,000 for compensation review?
4.  Recently Hired Employees: Who are the employees who have joined the company since the beginning of 1999?
5.  Employees Based in India: Can we get a list of all employees working out of our locations in India?
6.  Department Headcount Analysis: How many employees work in each department? The results should be ordered from most to least populated.
7.  Average Salary by Job Role: What is the average salary for each job role in the company?
8.  Company Reporting Structure: Can we generate a company-wide directory showing each employee and their direct manager?
9.  Top-Paying Department: Which department has the highest average salary, and what is that average?
10. Employee Salary Growth Analysis: For employee #81, what has been the total salary increase between their earliest and most recent recorded payment?
11. Salary Ranking Within Departments: How do employees rank by salary within their respective departments?
12. Second-Highest Earner: Who is the second-highest paid employee in the company for succession planning purposes?
13. Employee Tenure Calculation: What is the current tenure of each employee in years and months?
14. Salary Benchmarking Against Sales Department: Which employees earn more than the average salary of the Sales department?
15. Conditional Salary Hike Projection: How can we model a projected salary increase where Sales Managers get 15%, IT Programmers get 10%, and all others get a 5% raise?

#### Summary of Skills Demonstrated
- **Data Retrieval & Filtering**: **`SELECT`**, **`FROM`**, **`WHERE`**, **`ORDER BY`**, **`LIMIT`**.
- **Complex Joins**: **`INNER JOIN`**, **`LEFT JOIN`**, and **`SELF JOIN`** to combine data from multiple tables and the same table.
- **Aggregate Functions**: **`COUNT()`**, **`AVG()`**, **`MIN()`**, **`MAX()`** with **`GROUP`** BY for data summarization.
- **Subqueries**: Nested queries for complex filtering and comparative analysis.
- **Window Functions**: **`RANK()`** for advanced analytical ranking within partitions.
- **Date and Time Functions**: **`TIMESTAMPDIFF()`** and **`CURDATE()`** to calculate employee tenure.
- **Conditional Logic**: **`CASE`** statements to apply conditional logic for data transformation.
- **Data Manipulation**: **`CONCAT()`** for string manipulation and aliasing for clear results.

#### Author
* **Reshma Chandran R**
* [LinkedIn Profile](https://www.linkedin.com/in/reshma-chandran-r-586877198/)
* [GitHub Profile](https://github.com/reshmachandran480)
