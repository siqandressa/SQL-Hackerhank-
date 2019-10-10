/*
Author: Andressa Siqueira
MYSQL
*/

select c.company_code, c.founder, count( distinct l.lead_manager_code),
count( distinct s.senior_manager_code),count( distinct m.manager_code),
count( distinct e.employee_code )
from company c
left join lead_manager l on l.company_code=c.company_code
left join Senior_Manager s on s.company_code=c.company_code
left join Manager m on m.company_code=c.company_code
left join Employee e on e.company_code=c.company_code
group by c.company_code, c.founder
order by c.company_code asc