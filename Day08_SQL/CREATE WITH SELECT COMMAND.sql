-------------------------------------
-- CREATE WITH SELECT COMMAND
-------------------------------------

/* CREATE TABLE TABLE_NAME AS
(SELECT STATEMENT)
*/

create table temp_schema.demo1 as 
select * from temp_schema.table1;

create table temp_schema.demo2 as 
select