-- Active: 1742287443448@@127.0.0.1@5432@ph
-- CREATE TABLE person(  
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255)
-- );

SELECT * FROM "user";

ALTER Table "user"
ADD COLUMN email VARCHAR(20) DEFAULT 'sjn@gmail.com' not NULL

ALTER Table "user"
RENAME COLUMN age to user_age

ALTER Table "user"
    DROP COLUMN email;

INSERT INTO "user" 
    VALUES  
    (9, 'Rakib1',20)