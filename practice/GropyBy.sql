SELECT blood_group from students
    GROUP BY blood_group;

SELECT blood_group, count(*) from students
    GROUP BY blood_group;

SELECT blood_group, avg(age) from students
    GROUP BY blood_group
    HAVING avg(age) > 22
    