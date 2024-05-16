create Database Simple_Database;
use Simple_Database;

create table Patient(
patient_id int primary key,
patient_name varchar(255),
patient_address varchar(225)
);

create table Doctor(
doctor_id int primary key,
doctor_name varchar(255),
doctor_address varchar(225)

--b_date date,
--d_date date
--check (b_date < d_date)
--age int check (age < 18);
);
cid int primary key,
t_date datetime,
t_charges int,
doctor_id int foreign key references Doctor(doctor_id,
patient) 

create table treatment(
t_id int foreign key references patient(patient_id,
);

insert into Patient
(patient_name, patient_address, patient_id) 
values ('Abcd', 'wxtz', 1,
       ('efgh', 'stuv', 2);
select * from Patient;

insert into treatment
values (3, '2001-09-11',7000, 1,1);
 
select GETDATE (); 
select * from patient;
select * from doctor;
select * from treatment;

