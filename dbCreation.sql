
create database store;
use store;

create table category(
 id int unique not null auto_increment,
 `name` VARCHAR(30) unique not null,
PRIMARY KEY (id)

);


create table product(
product_ID int unique auto_increment,
title VARCHAR(20),
product_desc VARCHAR(30),
price int,
img_url text,
id int not null,
favorite boolean,

PRIMARY KEY (product_ID),
FOREIGN KEY (id) REFERENCES category(id)
);

