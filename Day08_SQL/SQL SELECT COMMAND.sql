-- switching the context to the COUNTRIES database
----------------------------------------------------
USE COUNTRIES;


---------------------------------------------------
-- selecting columns from a table
---------------------------------------------------
-- select the columns in any order
SELECT name, id, id from sub_regions;

select *, COUNTRY_ID FROM countries;


---------------------------------------------
-- ALIAS NAME FOR COLUMNS 
----------------------------------------------
-- aliasing name column as country_name
-- later to refer the column name, you have to use the new name only 
SELECT NAME AS COUNTRY_NAME FROM COUNTRIES;

-- alias names can also be specified without using 'AS' 
SELECT 
	COUNTRY_ID,
    NAME COUNTRY_NAME,
    CAPITAL CAPITAL_CITY,
    POPULATION
FROM COUNTRIES;

-- to specify alias names including spaces, such as (with or without 'AS', it works for both ways)
SELECT 
	COUNTRY_ID,
    NAME 'column name',
    CAPITAL 'capital city',
    POPULATION
FROM COUNTRIES;

------------------------------------------------
-- ALIAS NAMES FOR TABLES
------------------------------------------------
-- if table name is used while accessing the columns, then the new alias name must be used to access the columns in that case
-- with AS
SELECT
	T1.COUNTRY_ID, T1.NAME
FROM COUNTRIES AS T1;

-- without AS
SELECT
	T1.COUNTRY_ID, T1.NAME
FROM COUNTRIES T1;

---------------------------------------------------
-- SELECTING DISTINCT VALUES OF COULMNS FROM TABLE
---------------------------------------------------

SELECT REGION_ID FROM COUNTRIES;

SELECT DISTINCT REGION_ID FROM COUNTRIES;

-- when used with multiple colmns, distinct will check the whether the whole row is repeated again or not
-- if repeated, then it won't return that row
SELECT DISTINCT REGION_ID, NAME FROM COUNTRIES;

SELECT DISTINCT * FROM COUNTRIES;