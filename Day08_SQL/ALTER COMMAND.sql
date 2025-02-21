use temp_schema;

create table alter_demo(col1 varchar(255), col2 INT);

-- add a new column
alter table alter_demo add column col3 varchar(255);

-- add multiple columns
alter table alter_demo 
add column col4 INT,
add column col5 date;

-- drop columns
alter table alter_demo
drop column col4,
drop column col5;

-- modify column
alter table alter_demo 
modify column col2 varchar(255);

-- rename column
alter table alter_demo
rename column col2 to col6;

-- rename table
alter table alter_demo
rename alter_table;

alter table alter_table
rename alter_demo;

-- schema 
describe alter_demo;

-- create a table, add 2 columns with alter, and insert values in those 2 colmuns
create table alter_demo1 (col1 INT, col2 varchar(255));

alter table alter_demo1 
add column col3 INT,
add column col4 INT;

insert into alter_demo1(col3, col4) values
(10, 20),
(30, 40),
(50, 60);  

select * from alter_demo1;

