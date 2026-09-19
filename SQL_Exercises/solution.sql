-- Part A — Table Structure & Initial Verification
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    email VARCHAR(100) NULL,
    status VARCHAR(20)
);

INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, email, status)
VALUES
(101, 'Amit Sharma', 'IT', 75000.00, 'Pune', '2021-01-15', 'amit.sharma@company.com', 'Active'),
(102, 'Priya Patil', 'HR', 52000.00, 'Mumbai', '2020-03-20', 'priya.patil@company.com', 'Active'),
(103, 'Rahul Joshi', 'Sales', 48000.00, 'Nashik', '2022-06-10', 'rahul.joshi@company.com', 'Active'),
(104, 'Sneha Kulkarni', 'Testing', 60000.00, 'Pune', '2021-08-05', NULL, 'Active'),
(105, 'Vikram Deshmukh', 'Support', 42000.00, 'Mumbai', '2023-02-12', 'vikram.d@company.com', 'Active'),
(106, 'Neha More', 'Finance', 68000.00, 'Nashik', '2019-11-25', 'neha.more@company.com', 'Active'),
(107, 'Rohit Pawar', 'IT', 85000.00, 'Pune', '2018-07-18', 'rohit.pawar@company.com', 'Active'),
(108, 'Pooja Jadhav', 'HR', 55000.00, 'Mumbai', '2022-01-10', NULL, 'Active'),
(109, 'Sagar Shinde', 'Sales', 46000.00, 'Nashik', '2023-05-15', 'sagar.shinde@company.com', 'Active'),
(110, 'Kiran Chavan', 'Testing', 62000.00, 'Pune', '2020-09-01', 'kiran.chavan@company.com', 'Inactive'),

(111, 'Anjali Patil', 'Support', 39000.00, 'Mumbai', '2024-01-22', NULL, 'Active'),
(112, 'Akash Gaikwad', 'Finance', 72000.00, 'Pune', '2019-04-12', 'akash.gaikwad@company.com', 'Active'),
(113, 'Manish Kale', 'IT', 90000.00, 'Mumbai', '2017-06-30', 'manish.kale@company.com', 'Active'),
(114, 'Riya Salunkhe', 'HR', 50000.00, 'Nashik', '2021-12-05', 'riya.salunkhe@company.com', 'Active'),
(115, 'Tejas Borse', 'Sales', 58000.00, 'Pune', '2022-09-18', NULL, 'Inactive'),
(116, 'Swati Wagh', 'Testing', 64000.00, 'Mumbai', '2020-02-14', 'swati.wagh@company.com', 'Active'),
(117, 'Nikhil Pawar', 'Support', 44000.00, 'Nashik', '2023-07-20', 'nikhil.pawar@company.com', 'Active'),
(118, 'Komal Shinde', 'Finance', 70000.00, 'Pune', '2018-10-10', NULL, 'Active'),
(119, 'Prasad More', 'IT', 95000.00, 'Mumbai', '2016-05-25', 'prasad.more@company.com', 'Active'),
(120, 'Megha Joshi', 'HR', 53000.00, 'Pune', '2022-04-08', 'megha.joshi@company.com', 'Active'),

(121, 'Ramesh Patil', 'Sales', 47000.00, 'Nashik', '2023-03-17', NULL, 'Inactive'),
(122, 'Shweta Desai', 'Testing', 61000.00, 'Pune', '2021-11-11', 'shweta.desai@company.com', 'Active'),
(123, 'Ganesh Jadhav', 'Support', 41000.00, 'Mumbai', '2024-02-05', 'ganesh.jadhav@company.com', 'Active'),
(124, 'Pallavi Kulkarni', 'Finance', 76000.00, 'Nashik', '2019-08-19', 'pallavi.k@company.com', 'Active'),
(125, 'Sachin Pawar', 'IT', 88000.00, 'Pune', '2018-03-12', NULL, 'Active'),
(126, 'Vaishnavi More', 'HR', 57000.00, 'Mumbai', '2022-07-25', 'vaishnavi.more@company.com', 'Active'),
(127, 'Omkar Shinde', 'Sales', 51000.00, 'Pune', '2023-10-02', 'omkar.shinde@company.com', 'Active'),
(128, 'Madhuri Patil', 'Testing', 67000.00, 'Nashik', '2020-06-16', NULL, 'Inactive'),
(129, 'Swapnil Joshi', 'Support', 45000.00, 'Pune', '2024-03-01', 'swapnil.joshi@company.com', 'Active'),
(130, 'Aarti Deshmukh', 'Finance', 79000.00, 'Mumbai', '2017-12-20', 'aarti.d@company.com', 'Active');

-- Part B — Basic Equality & Direct Comparison Filters (=, !=, <>)
SELECT * FROM employees WHERE city = 'Pune';
SELECT * FROM employees WHERE city = 'Mumbai';
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE department = 'HR';
SELECT * FROM employees WHERE department = 'Sales';
SELECT * FROM employees WHERE status = 'Active';
SELECT * FROM employees WHERE status = 'Inactive';
SELECT * FROM employees WHERE employee_id = 103;
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';
SELECT * FROM employees WHERE salary = 79000;
SELECT * FROM employees WHERE city != 'Pune';
SELECT * FROM employees WHERE department <> 'Testing';

-- Part C — Relational Comparison Operators (>, <, >=, <=)
SELECT * FROM employees WHERE salary > 40000;
SELECT * FROM employees WHERE salary < 35000;
SELECT * FROM employees WHERE salary >= 50000;
SELECT * FROM employees WHERE salary <= 30000;
SELECT * FROM employees WHERE joining_date > '2025-01-01';
SELECT * FROM employee  WHERE joining_date <= '2024-12-31';
SELECT * FROM employees WHERE employee_id > 110;
SELECT employee_name, joining_date FROM employees WHERE joining_date >= '2026-01-01';

-- Part D — Combining Conditions with Logical AND Operator
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';
SELECT * FROM employees WHERE department = 'IT' AND salary > 50000;
SELECT * FROM employees WHERE city = 'Mumbai' AND status = 'Inactive';
SELECT * FROM employees WHERE department = 'Sales' AND city = 'Pune' AND salary >= 42000;
SELECT * FROM employees WHERE department = 'HR' AND joining_date > '2025-06-01';
SELECT * FROM employees WHERE status = 'Active' AND salary >= 40000 AND salary <= 70000;
SELECT * FROM employees WHERE city = 'Mumbai' AND department = 'Testing' AND salary > 38000;
SELECT * FROM employees WHERE status = 'Active' AND joining_date >= '2026-01-01' AND salary > 45000;

-- Part E — Logical OR & NOT Operators
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';
SELECT * FROM employees WHERE salary < 32000 OR salary > 60000;
SELECT * FROM employee WHERE city = 'Nashik' OR salary > 55000;
SELECT * FROM employees WHERE NOT department = 'HR';
SELECT * FROM employees WHERE NOT status = 'Inactive';
SELECT * FROM employees WHERE (city = 'Pune' OR city = 'Mumbai') AND status = 'Active';
SELECT * FROM employees WHERE NOT city = 'Pune' AND salary > 40000;

-- Part F — Range & Membership Operators (BETWEEN, IN)
SELECT * FROM employees WHERE salary BETWEEN 35000 AND 55000;
SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 65000;
SELECT * FROM employees WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';
SELECT * FROM employees WHERE department IN ('IT', 'HR', 'Sales');
SELECT * FROM employees WHERE city IN ('Pune', 'Mumbai', 'Nagpur');
SELECT * FROM employees WHERE department NOT IN ('Testing', 'Support');
SELECT * FROM employees WHERE city NOT IN ('Mumbai', 'Nashik');
SELECT * FROM employees WHERE employee_id IN (101, 105, 110, 115, 120);
SELECT * FROM employees WHERE department IN ('IT', 'Sales') AND salary BETWEEN 45000 AND 75000;

-- Part G — Pattern Matching with LIKE & Wildcards (%, _)
SELECT * FROM employees WHERE employee_name LIKE 'A%';
SELECT * FROM employees WHERE employee_name LIKE 'R%';
SELECT * FROM employees WHERE employee_name LIKE '%a';
SELECT * FROM employees WHERE employee_name LIKE '%sh%';
SELECT * FROM employees WHERE employee_name LIKE 'P%a';
SELECT * FROM employees WHERE employee_name LIKE '_____';
SELECT * FROM employees WHERE employee_name LIKE '_a%';
SELECT * FROM employees WHERE employee_name NOT LIKE 'R%';

-- Part H — NULL Value Checks (IS NULL & IS NOT NULL)
SELECT * FROM employees WHERE email IS NULL;
SELECT * FROM employees WHERE email IS NOT NULL;
SELECT * FROM employees WHERE city = 'Pune' AND email IS NULL;
SELECT * FROM employees WHERE status = 'Active' AND email IS NOT NULL AND salary > 40000;

-- Part I — Combined Industrial Challenge Queries
SELECT *FROM employees
WHERE status = 'Active'
  AND city IN ('Pune', 'Mumbai')
  AND department IN ('IT', 'Sales')
  AND salary BETWEEN 40000 AND 70000
  AND joining_date > '2025-01-01';

SELECT * FROM employees
WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%')
  AND email IS NOT NULL
  AND status = 'Active'
  AND city IN ('Pune', 'Nashik');