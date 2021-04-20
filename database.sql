CREATE DATABASE crocodiloDB;

--\c into crocodiloDB

CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    description VARCHAR(255)
);