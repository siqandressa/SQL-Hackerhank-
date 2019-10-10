/*
Author: Andressa Siqueira
MYSQL
*/

select 
case when grade < 8 then null else name end,
grade, marks
from (select name, marks, grade
from grades, students
where marks between min_mark and max_mark) t
order by grade desc, name, marks