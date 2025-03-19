-- DDL= data definition language 
-- get data 
 SELECT * from person;
-- create table 
CREATE TABLE person(  
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- insert data
INSERT INTO person ( user_name,age)  
VALUES  
    ( 'Rakib',20),  
    ( 'Hasna',30),  
    ( 'Tora',40);

-- create a column 
ALTER TABLE person 
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com ' NOT NULL;


-- delete column  
ALTER TABLE person DROP COLUMN email ;


-- rename column name 
ALTER TABLE person
    RENAME COLUMN name TO user_name;

-- constant set in column ( previously created column user can set null value but i do not want to add any null value)
ALTER TABLE person
    ALTER COLUMN user_name set not NULL;

-- remove constant 
ALTER TABLE person
    ALTER COLUMN user_name drop not NULL;


-- column type change 
ALTER TABLE person
    ALTER COLUMN user_name TYPE VARCHAR(50);

-- unique type change 
ALTER TABLE person
    ADD constraint unique_person_user_age UNIQUE(age)
-- unique type drop
ALTER TABLE person
    drop constraint unique_person_user_age UNIQUE(age)



-- inset value  
INSERT into person VALUES(6,'asdf','asdf@gmail.com');

-- truncate data ( যখন টেবিলের ডাটা ডিলেট করবো কিন্তু টেবিলের structure ঠিক থাকবে তখন)
TRUNCATE table person;