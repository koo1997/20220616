--ROLLUP

--기본 집계
select period,gubun,sum(loan_jan_amt) totl_jan
from kor_loan_status
where period like '2013%'
group by period,gubun
order by period;

--PERIOD GUBUN                            TOTL_JAN
-------- ------------------------------ ----------
--201310 기타대출                           676078
--201310 주택담보대출                     411415.9
--201311 기타대출                         681121.3
--201311 주택담보대출                     414236.9

select period,gubun,sum(loan_jan_amt) totl_jan
from kor_loan_status
where period like '2013%'
group by rollup(period,gubun);


--PERIOD GUBUN                            TOTL_JAN
-------- ------------------------------ ----------
--201310 기타대출                           676078
--201310 주택담보대출                     411415.9
--201310                                 1087493.9  10월 대출총액
--201311 기타대출                         681121.3
--201311 주택담보대출                     414236.9
--201311                                 1095358.2  11월 대출총액
--                                       2182852.1  총액
--
--7개 행이 선택되었습니다. 



