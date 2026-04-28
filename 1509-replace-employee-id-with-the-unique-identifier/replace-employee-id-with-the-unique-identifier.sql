# Write your MySQL query statement below
select em.name , un.unique_id 
from employees as em
left join EmployeeUNI as un
 on em.id = un.id;