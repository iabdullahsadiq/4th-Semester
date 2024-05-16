create Database Market;
use Market;

create table customers(
c_id int primary key,
c_name varchar (255),
c_address varchar (255)
);

create table product(
p_id int primary key,
p_name varchar (255),
p_address varchar (255),
p_amount money
);

create table orders(
o_id int primary key,
o_time datetime,
o_quantity int,
o_amount int,
c_id int foreign key references customer
);

