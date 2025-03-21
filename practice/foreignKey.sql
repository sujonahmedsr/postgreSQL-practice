create Table post (
    id SERIAL PRIMARY KEY,
    title text not NULL,
    user_id INT REFERENCES "user"(id)
)

create Table post (
    id SERIAL PRIMARY KEY,
    title text not NULL,
    user_id INT REFERENCES "user"(id) on delete CASCADE
)

create Table post (
    id SERIAL PRIMARY KEY,
    title text not NULL,
    user_id INT REFERENCES "user"(id) on delete set NULL not NULL
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

-- data retrive with 2 table 
SELECT title, user_name from post
    JOIN "user" on post.user_id = "user".id

SELECT title, user_name from post
  LEFT  JOIN "user" on post.user_id = "user".id

SELECT title, user_name from post
  RIGHT  JOIN "user" on post.user_id = "user".id

SELECT * from post
  FULL JOIN "user" on post.user_id = "user".id

SELECT * from post
  CROSS JOIN "user"

SELECT * from post
  NATURAL JOIN "user"

SELECT * FROM post JOIN "user" on post.user_id = "user".id

SELECT * FROM "user";

SELECT * FROM post;