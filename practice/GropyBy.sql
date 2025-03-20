SELECT blood_group from students
    GROUP BY blood_group;

SELECT blood_group, count(*) from students
    GROUP BY blood_group;

SELECT blood_group, avg(age) from students
    GROUP BY blood_group
    HAVING avg(age) > 22

SELECT extract(YEAR from date_of_birth) as birth_year, count(*) FROM students
    GROUP BY birth_year
    