CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employee;
$$;

SELECT emp_count()

CREATE Function delete_emp(p_Id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employee WHERE department_id = p_Id;
$$;

SELECT delete_emp(2)

SELECT * FROM employee