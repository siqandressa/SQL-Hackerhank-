/*
Author: Andressa Siqueira
MYSQL
*/

select name
from city
where countrycode in (select code from country where continent='Africa')