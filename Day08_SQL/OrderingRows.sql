----------------------------------
-- ORDER BY COMMAND 
-----------------------------------
/* 
SELECT COULUMN(s)
FROM TABLE 
ORDER BY COLUMN(s) ASC|DESC 
*/

-- by default it select in asc order
SELECT * FROM COUNTRIES ORDER BY REGION_ID;
-- desc order
SELECT * FROM COUNTRIES ORDER BY REGION_ID DESC;

-- order by with multiple clumns
SELECT REGION_ID, COUNTRY_ID, NAME 
FROM COUNTRIES
ORDER BY REGION_ID, COUNTRY_ID;

-- order multiple coulmns in different orders
SELECT REGION_ID, COUNTRY_ID 
FROM COUNTRIES
ORDER BY REGION_ID ASC, COUNTRY_ID DESC;

