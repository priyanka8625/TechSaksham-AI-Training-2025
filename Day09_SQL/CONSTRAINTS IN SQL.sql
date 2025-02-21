use temp_schema;

select * from alter_demo;

describe alter_demo;

insert into alter_demo values(10, 20, 30),
(40, 50, 60);

-------------------------------------------------
-- NOT NULL
---------------------------------------------------

-- adding not null constraint
alter table alter_demo 
modify column col1 VARCHAR(255) NOT NULL;

-- null values are not accepted
insert into alter_demo values(null, 20, 30);

-- removing not null constraint
alter table alter_demo 
modify column col1 VARCHAR(255);

-------------------------------------------------
-- UNIQUE
---------------------------------------------------

-- adding unique constraint in create query
-- create table alter_demo(col1 INT UNIQUE, col2 INT);

-- altering column to unique
alter table alter_demo modify column col1 INT UNIQUE;

-- adding duplicates in alter demo
-- adding multiple null values are accepted
insert into alter_demo values(NULL, 100, 200);
insert into alter_demo values(NULL, 100, 200);

select * from alter_demo;

-----------------------------------------------
-- DEFAULT 
----------------------------------------------

-- add default constraint
alter table alter_demo 
modify column col6 INT DEFAULT 10;

insert into alter_demo values(1, NULL, 2);
insert into alter_demo(col1, col3) values(2, 3);

-------------------------------------------------
-- CHECK 
-------------------------------------------------

-- adding check constraint
alter table alter_demo
modify column col3 INT CHECK (col3<300);

-- check constraint violated
insert into alter_demo values(5, 2, 10);

--------------------------------------------------
-- DROPPING contraints
--------------------------------------------------
describe alter_demo;
select * from alter_demo;

-- drop contraint constraint_name;

-- to view constraint names
show create table alter_demo; 
-- now drop constraint
alter table alter_demo
drop constraint alter_demo_chk_1;

-------------------------------------
-- PRIMARY KEY
-------------------------------------

-- create table syntax
-- create table alter_demo(col1 INT PRIMARY KEY, col2 INT);
-- create table alter_demo(col1 INT, col2 INT, PRIMARY KEY(col1)); 
create table pk_table(col1 INT, col2 INT);
alter table pk_table modify column col1 INT PRIMARY KEY;
describe pk_table;

insert into pk_table values(1, 2),
(2, 3),
(3, 3);

------------------------------------------
-- DROPPING PRIMARY KEY
---------------------------------------

-- alter table pk_table 
	-- drop primary key;

---------------------------------------
-- FOREIGN KEY
---------------------------------------
-- create syntax
create table fk_table (
	col1 INT,
    col2 INT,
    FOREIGN KEY(col2) REFERENCES pk_table(col1)
    );
    
describe fk_table;

-- cannot insert a record untill the corresponding value is not primary column
insert into fk_table values (1, 4); -- throws fk contraint fails error
insert into fk_table values (1, 2);

------------------------------------------
-- DROPPING PRIMARY KEY
---------------------------------------

-- alter table fk_table
-- drop constraint fk_constraint_name;