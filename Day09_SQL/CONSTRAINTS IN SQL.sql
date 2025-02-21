use temp_schema;

select * from alter_demo;

insert into alter_demo values(10, 20, 30),
(40, 50, 60);

-- not null constraint
alter table alter_demo 
modify column col1 VARCHAR(255) NOT NULL;
-- null values are not accepted
insert into alter_demo values(null, 20, 30);

-- 