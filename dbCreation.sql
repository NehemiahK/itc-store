create database store;
use store;

create table category(
cat_ID int unique not null,
cat_name VARCHAR(30),
PRIMARY KEY (cat_ID)

);



create table product(
product_ID int unique,
title VARCHAR(20),
product_desc VARCHAR(30),
price int,
img_url VARCHAR(30),
cat_ID int not null,
favorite boolean,

PRIMARY KEY (product_ID),
FOREIGN KEY (cat_id) REFERENCES category(cat_id)
);

