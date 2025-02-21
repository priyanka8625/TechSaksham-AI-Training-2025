/* 
1. create assignment schema
2. create movie_ratings table
3. apply unique constraint to movie name
4. insert data
5. prevent duplicate entry
*/

CREATE DATABASE ASSIGNMENT_SCHEMA;
USE ASSIGNMENT_SCHEMA;

CREATE TABLE MOVIE_RATINGS 
(MOVIE_NAME VARCHAR(255), RATINGS VARCHAR(10));

ALTER TABLE MOVIE_RATINGS 
	MODIFY MOVIE_NAME VARCHAR(255) UNIQUE;

INSERT INTO MOVIE_RATINGS VALUES
('abcd', '5'),
('cdfg', '4');
-- duplicate entry not allowed
INSERT INTO MOVIE_RATINGS VALUES
('abcd', '6'); 

/*
1. In the movie ratings table, add a check constraint to table 
prevent values that are 0 or below from being entered in the ratings column
*/
ALTER TABLE MOVIE_RATINGS MODIFY COLUMN RATINGS VARCHAR(10) CHECK(RATINGS>0);
-- negative insert prevented 
INSERT INTO MOVIE_RATINGS VALUES
('BCDS', '0'),
('BGCD', '-9');
