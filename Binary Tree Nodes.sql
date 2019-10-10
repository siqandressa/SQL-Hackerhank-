/*
Author: Andressa Siqueira
MYSQL
*/

select n,
    if(p is null, 'Root',if(qnt=2,'Inner','Leaf'))
from (  select b1.n,b1.p, (select count(p) from BST b2 where p=b1.n) as qnt from BST b1 ) result
order by n
