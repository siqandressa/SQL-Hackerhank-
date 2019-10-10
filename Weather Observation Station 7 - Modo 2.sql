/*
Author: Andressa da Silva Siqueira
MYSQL
*/

Select distinct city from station 
where REGEXP_LIKE (city,'[aeiou]$')