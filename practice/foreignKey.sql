create Table post (
    id SERIAL PRIMARY KEY,
    title text not NULL,
    user_id INT REFERENCES "user"(id)
)

create table "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) not NULL
)

ALTER Table post
    alter COLUMN user_id set not NULL

INSERT INTO "user" (user_name) VALUES
('shofiqul islam sujon'),
('rakibul islam rakib'),
('nadimul islam rahib');

INSERT INTO post (title, user_id)  
VALUES  
('Introduction to JavaScript', 1)



SELECT * FROM "user";

SELECT * FROM post;