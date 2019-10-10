/*
Author: Andressa da Silva Siqueira
MYSQL
*/

Select city from station 
where REGEXP_LIKE (city,'^[aeiou]')