/*
Author: Andressa Siqueira
MYSQL
*/

select if(grade < 8, null,name),
grade, marks
from (select name, marks, grade
from grades, students
where marks between min_mark and max_mark) t
order by grade desc, name, marks