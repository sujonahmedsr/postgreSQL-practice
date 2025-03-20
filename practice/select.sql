create Table students (
    student_id SERIAL,
    student_name VARCHAR(50),
    age int,
    email VARCHAR(30),
    date_of_birth Date,
    blood_gropu VARCHAR(10),
    student_address VARCHAR(100),
    country VARCHAR(30)
)

ALTER Table students
    RENAME COLUMN blood_gropu to blood_group

ALTER Table students
    ADD PRIMARY KEY (student_id)

insert INTO students (student_id, student_name, age, email, date_of_birth, blood_group, student_address, country)
VALUES 
(1, 'Rahim Uddin', 22, 'rahim.uddin@example.com', '2002-05-15', 'A+', 'House #12, Dhaka', 'Bangladesh'),  
(2, 'Karim Hossain', 23, 'karim.hossain@example.com', '2001-08-20', 'B-', 'Road #5, Chittagong', 'Bangladesh'),  
(3, 'Fatima Akter', 21, 'fatima.akter@example.com', '2003-11-10', 'O+', 'Sector #9, Sylhet', 'Bangladesh');  

select * from students;