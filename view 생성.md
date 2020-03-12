# view 생성 권한 주기

시스템 계정 접속

grant create view to flower;



# view 생성

create or replace view change_view

as select sum(oper_month) "sum_oper_month" from change;

select  

SUM(컬럼명),

AVG(컬럼명),

MAX(컬럼명),

MIN(컬럼명),

COUNT(컬럼명),

from 테이블명

where 조건

group by 그룹화할 컬럼

having 그룹에 대한 조건

where - group by - having 의 순서

 HAVING은 그룹화 한 데이터에 대한 조건만이 가능하고 WHERE은 그룹화 하지 않은 조건만 가능하다.



# 골목상권 분석 데이터

<골목상권 분석 정보>

고객님께서 선택하신 (상권코드명(quarter테이블의 area_coname) 상권의ㅕ (서비스업종명(service테이블의 serv_coname ) ) 업종 분석 정보에 대해 안내 드리겠습니다.



## sales_1 테이블

- 1) month_sal_money 2) month_sal_num

a 업종의 월매출 금액은 1) 이고 월 매출 수는 2) 입니다.

- 1) wday_sal_money 2) wkend_sal_money

a 업종의 주중(월-금) 매출 금액은 1) 이고.  주말(토,일) 매출 금액은 2) 입니다.

- 1) m_sal_money 2) w_sal_money

a 업종의 남성 매출 금액은 1) 이고, 여성 매출 금액은 2) 입니다.



## sales_2 테이블

- 1) sal_money_10 2) sal_money_20 3) sal_money_30 4) sal_money_40 5) sal_money_50 6) sal_money_60

a 업종의 연령별 매출 금액에 대한 정보 입니다.

10대 매출 금액 : 1)

20대 매출 금액 : 2)

30대 매출 금액: 3)

40대 매출 금액: 4)

50대 매출 금액: 5)

60대 매출 금액: 6)



## sales_3 테이블



1) wday_sal_num 2)wkend_sal_num 3)m_sal_num 4)w_sal_num

a 업종의 주중(월-금) 매출 수는 1)이고, 주말(토-일) 매출 수는 2) 입니다.

a 업종의 남성 매출 수는 1) 이고, 여성 매출 수는 2) 입니다.



## sales_4 테이블

1) sal_num_10 2) sal_num_20 3) sal_num_30 4) sal_num_40 5) sal_num_50 6) sal_num_60

10대 매출 수 : 1)

20대 매출 수 : 2)

30대 매출 수: 3)

40대 매출 수: 4)

50대 매출 수: 5)

60대 매출 수: 6)





# 골목상권 컨설팅 데이터

## change

우선 고객님께서 선택하신  (상권코드명(quarter테이블의 area_coname) 상권에 대한 정보만 안내 드리겠습니다. 고객님이 선택하신 상권은



if==(change 테이블의 CHANGE_ID)(1이라면)

현재 가장 정체되고 있는 상권으로 다른 상권을 선택하시는 것을 권유합니다. 



if==(change 테이블의 CHANGE_ID)(2이라면)

현재 축소되고 있는 상권으로 다른 상권을 선택하는 것을 고려해보셔야 할 것 같습니다. 



if==(change 테이블의 CHANGE_ID)(3이라면)

현재 확장되고 있는 상권으로 앞으로 성공할 가능성이 높습니다.



if==(change 테이블의 CHANGE_ID)(4라면)

현재 다이나믹하게 확장되고 있는 상권으로 고객님의 안목이 아주 높으십니다.





a 업종이 운영되는 영업 개월 평균은 1) 이고, 폐업 개월 평균은 2) 입니다.

골목상권의 평균 영업 개월 수인 * 보다 (작습니다./큽니다) 

또한, 골목상권의 평균 폐업 개월 수인 * 보다 (작습니다./큽니다)





