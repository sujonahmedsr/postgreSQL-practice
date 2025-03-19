-- get data 
 SELECT * from person;
-- create table 
CREATE TABLE person(  
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- insert data
INSERT INTO person ( name)  
VALUES  
    ( 'Rakib'),  
    ( 'Hasna'),  
    ( 'Tora');

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




-- inset value  
INSERT into person VALUES(6,'asdf','asdf@gmail.com');