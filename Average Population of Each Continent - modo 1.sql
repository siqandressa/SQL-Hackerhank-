/*
Author: Andressa Siqueira
MYSQL
*/

select co.continent, floor(avg(ci.population))
from country co, city ci
where co.code=ci.countrycode
group by co.continent