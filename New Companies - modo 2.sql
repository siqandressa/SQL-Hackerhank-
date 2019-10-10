/*
Author: Andressa Siqueira
MYSQL
*/

select c.company_code, c.founder,
(select count(distinct lead_manager_code) from lead_manager l where l.company_code=c.company_code),
(select count(distinct senior_manager_code) from Senior_Manager s where s.company_code=c.company_code),
(select count(distinct manager_code) from Manager m where m.company_code=c.company_code),
(select count(distinct employee_code) from Employee e where e.company_code=c.company_code)
from company c
order by c.company_code