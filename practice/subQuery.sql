SELECT * FROM employee WHERE salary > (SELECT max(salary) FROM employee WHERE department_name = "HR")

-- view
CREATE VIEW dep_avg_salary
AS
SELECT department_id FROM employee

SELECT * FROM dep_avg_salary