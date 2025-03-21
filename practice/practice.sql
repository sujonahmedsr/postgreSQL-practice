CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES department(department_id) on delete CASCADE,
    salary DECIMAL(10, 2),
    hire_date DATE
)

CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(30)
)

INSERT INTO department (department_name) VALUES
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('IT Support'),
('Research and Development'),
('Production'),
('Customer Service'),
('Logistics'),
('Legal');

INSERT INTO employee (employee_name, department_id, salary, hire_date) VALUES
('John Doe', 1, 50000.00, '2020-06-15'),
('Jane Smith', 2, 60000.00, '2019-04-22'),
('Michael Johnson', 3, 55000.00, '2021-08-10'),
('Emily Davis', 4, 48000.00, '2018-12-05'),
('David Wilson', 5, 70000.00, '2022-02-14'),
('Sarah Brown', 6, 65000.00, '2020-09-30'),
('James Taylor', 7, 52000.00, '2017-07-20'),
('Linda Martinez', 8, 45000.00, '2019-11-25'),
('Robert Anderson', 9, 58000.00, '2021-03-18'),
('Mary Thomas', 10, 75000.00, '2016-05-10'),
('William Harris', 1, 51000.00, '2019-06-07'),
('Elizabeth Clark', 2, 62000.00, '2018-09-15'),
('Christopher Lewis', 3, 54000.00, '2022-01-12'),
('Patricia Hall', 4, 47000.00, '2020-10-05'),
('Matthew Allen', 5, 72000.00, '2017-04-19'),
('Jessica Young', 6, 67000.00, '2023-07-21'),
('Daniel Hernandez', 7, 53000.00, '2018-03-27'),
('Jennifer King', 8, 46000.00, '2021-05-14'),
('Joshua Wright', 9, 59000.00, '2019-12-30'),
('Ashley Lopez', 10, 77000.00, '2015-08-17');


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
)

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(101, '2024-03-01', 250.75),
(102, '2024-03-02', 120.50),
(103, '2024-03-03', 89.99),
(104, '2024-03-04', 300.00),
(105, '2024-03-05', 450.25),
(106, '2024-03-06', 199.49),
(107, '2024-03-07', 75.80),
(108, '2024-03-08', 150.30),
(109, '2024-03-09', 600.00),
(110, '2024-03-10', 320.99);


-- task 1: Inner join to retrive employee and department information; 
SELECT * FROM employee NATURAL JOIN department;

SELECT * FROM employee JOIN department USING(department_id);


-- task 2: Show department name with avg salary; 
SELECT department_name, round(avg(salary)) FROM employee
    JOIN department USING(department_id)
    GROUP BY department_name


-- task 3: Count employee in each department; 
SELECT department_name, count(employee_id) FROM employee
    JOIN department USING(department_id)
    GROUP BY department_name

-- task 4: Find the department name with the highest avg salary; 
SELECT department_name, round(avg(salary)) as avg_salary FROM employee
    JOIN department USING(department_id)
    GROUP BY department_name
    ORDER BY avg_salary DESC
    LIMIT 1

-- task 5: Count employee hired each year; 
SELECT extract(YEAR FROM hire_date), count(*) FROM employee
    JOIN department USING(department_id)
    GROUP BY extract(YEAR FROM hire_date)

-- task 6: Find customers who have placed more than 2 orders and calculate the total amount spent by each of these customers ;
SELECT customer_id, count(*), sum(total_amount) as total_spent FROM orders
    GROUP BY customer_id
    HAVING count(order_id) > 2

-- task 6: Find the total amount of orders placed each month in the year 2022;