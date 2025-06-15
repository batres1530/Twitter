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
 
 INSERT INTO users (user_handle,email_address,first_name,last_name,phonenumber) values
('sdbm15', 'sdbm15@gmail.com', 'David', 'Martinez', '96309694'),
('msmith', 'msmith@example.com', 'Mary', 'Smith', '2234567890'),
('ajones', 'ajones@example.com', 'Alice', 'Jones', '3234567890'),
('bjohnson', 'bjohnson@example.com', 'Bob', 'Johnson', '4234567890'),
('csanchez', 'csanchez@example.com', 'Carlos', 'Sánchez', '5234567890');
