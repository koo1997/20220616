--SUM


select sum(salary) --sum 합계
from employees;


select sum(salary), sum(DISTINCT salary)--distinct ==중복 제거
from employees;


--SUM(SALARY)--SUM합계
--------------------
--            691416
--
--
--SUM(SALARY) SUM(DISTINCTSALARY)--DISTINCT==중복제거
------------- -----------------------------------
--     691416                              409908

