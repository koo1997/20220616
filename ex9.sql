select count(*)
from ex9;--*==전체 로우 수 ,null값 포함


select count(sol1)
from ex9;--==sol1 로우수, null값 포함?


select count(distinct sol1)
from ex9;--null값 미포함


select distinct sol1--null값포함
from ex9
ORDER BY sol1 asc;--asc==오름차순desc==내림차순


