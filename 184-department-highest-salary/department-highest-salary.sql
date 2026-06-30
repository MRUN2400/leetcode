# Write your MySQL query statement below
WITH salary_rank AS(
    SELECT
        dep.name AS Department
        ,emp.name AS Employee
        ,salary AS Salary
        ,RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS highest_salary_rank
    FROM
        Employee emp
    LEFT JOIN
        Department dep
    ON
        emp.departmentId = dep.id
)

SELECT
    Department
    ,Employee
    ,Salary
FROM
    salary_rank
WHERE
    highest_salary_rank = 1;