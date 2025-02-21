/* 
UPDATE table_name 
SET column1=val1, column2=val2
WHERE condition;
*/

Use temp_schema;

create table update_demo(col1 INT, col2 INT);

insert into update_demo values
(10, 20),
(20, 30),
(30, 40);

select * from update_demo;

-- change safe mode
SET SQL_SAFE_UPDATES = 0;

-- update specific columns with condition
update update_demo set col1=100 where col1=30;

-- update all values
update update_demo set col2=200;
 