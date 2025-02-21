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

