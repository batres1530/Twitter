DROP database IF exists twitter_db;
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
 
 INSERT INTO users (user_handle, email_address, first_name, last_name, phonenumber)
VALUES 
('jdoe', 'jdoe@example.com', 'John', 'Doe', '+1-555-123-4567'),
('asmith', 'asmith@example.com', 'Alice', 'Smith', '+1-555-234-5678'),
('mlopez', 'mlopez@example.com', 'Maria', 'Lopez', '+1-555-345-6789'),
('rgarcia', 'rgarcia@example.com', 'Roberto', 'Garcia', '+1-555-456-7890'),
('lchan', 'lchan@example.com', 'Linda', 'Chan', '+1-555-567-8901'),
('dtorres', 'dtorres@example.com', 'Daniel', 'Torres', '+1-555-678-9012'),
('ksanders', 'ksanders@example.com', 'Karen', 'Sanders', '+1-555-789-0123'),
('fperez', 'fperez@example.com', 'Francisco', 'Perez', '+1-555-890-1234'),
('nwilson', 'nwilson@example.com', 'Nancy', 'Wilson', '+1-555-901-2345'),
('tbennett', 'tbennett@example.com', 'Thomas', 'Bennett', '+1-555-012-3456');

DROP TABLE IF exists followers;

CREATE TABLE followers (
followers_id int not null,
following_id  int not null,
FOREIGN KEY (followers_id) references users (user_id),
FOREIGN KEY (following_id) REFERENCES users (user_id),
PRIMARY KEY (followers_id, following_id)
);
SELECT * FROM users; 

ALTER TABLE followers ADD constraint check_followers_id
check (followers_id <>  following_id );


INSERT INTO followers (followers_id, following_id) VALUES
(1,2),
(2,1),
(3,4),
(4,3),
(5,6),
(6,5),
(7,8),
(8,7),
(9,10),
(10,9);

SELECT followers_id, following_id FROM followers;
select followers_id from followers WHERE followers_id = 1;
select COUNT (followers_id) as followers  FROM followers where following_id = 1;
 -- TOP 3 USER CON MAS SEGUIDIORES
 
 SELECT followers_id,COUNT(followers_id) AS followers FROM followers GROUP BY following_id LIMIT 3;