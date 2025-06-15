create database twitter_db;
use twitter_db;
show databases;

create table users (
user_id INT NOT NULL AUTO_INCREMENT,
user_handle VARCHAR(50) NOT NULL UNIQUE,
email_address VARCHAR(50) NOT NULL UNIQUE,
first_name varchar(50) NOT NULL,
last_name varchar(50) not null,
phonenumber char(15),
created_at timestamp NOT NULL DEFAULT NOW(),
PRIMARY KEY (user_id)
);
 SELECT * FROM users;
 
 INSERT INTO users (user_id,)