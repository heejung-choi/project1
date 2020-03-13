<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#s_color{
color : blue;
}
</style>
</head>
<body>
<h5>세호형 출력 영역</h5>
<hr>
<h2>세일즈 1~4 출력 영역</h2>
<hr>


<h5>우선 고객님께서 선택하신 <span id="s_color">${requestScope.areaCodeName}</span> 상권에 대한 정보만 안내 드리겠습니다.</h5> 
<h5>고객님이 선택하신 상권은 <span id="s_color">${requestScope.changeCodeName }</span> 입니다. </h5>

<c:if test="${requestScope.change_id eq 1}">
<h4><span id="s_color">${requestScope.areaCodeName}</span> 상권은 현재 가장 정체되고 있는 상권으로 다른 상권을 선택하시는 것을 권유합니다. </h4>
</c:if>
<c:if test="${requestScope.change_id eq 2}">
<h4><span id="s_color">${requestScope.areaCodeName}</span> 상권은 현재 축소되고 있는 상권으로 다른 상권을 선택하는 것을 고려해보셔야 할 것 같습니다.  </h4>
</c:if>
<c:if test="${requestScope.change_id eq 3}">
<h4><span id="s_color">${requestScope.areaCodeName}</span> 상권은 현재 확장되고 있는 상권으로 앞으로 성공할 가능성이 높습니다. </h4>
</c:if>
<c:if test="${requestScope.change_id eq 4}">
<h4><span id="s_color">${requestScope.areaCodeName}</span> 상권은 현재 다이나믹하게 확장되고 있는 상권으로 고객님의 안목이 아주 높으십니다. </h4>
</c:if>
<hr>
<h4>아래에서 고객님께서 선택하신 <span id="s_color">${requestScope.areaCodeName}</span> 상권/ <span id="s_color">${requestScope.serviceCodeName}</span> 업종에 대해 더 자세한 컨설팅 정보를 보여드리겠습니다.</h4>
<ul>
<li><span id="s_color">${requestScope.serviceCodeName}</span> 업종이 운영되는 영업 개월 평균은 <span id="s_color">${requestScope.oper_month }</span> 입니다.</li>
<li> 폐업 개월 평균은 <span id="s_color">${requestScope.close_month }</span> 입니다.</li>
<c:if test="${requestScope.oper_month gt requestScope.oper_month_avg}">
<li>골목상권의 평균 영업 개월 수인 <span id="s_color">${requestScope.oper_month_avg}</span> 보다 큽니다.</li> 
</c:if>
<c:if test="${requestScope.oper_month le requestScope.oper_month_avg}">
<li>골목상권의 평균 영업 개월 수인 <span id="s_color">${requestScope.oper_month_avg}</span> 보다 작습니다.</li> 
</c:if>
<c:if test="${requestScope.close_month gt requestScope.close_month_avg}">
<li>또한, 골목상권의 평균 폐업 개월 수인 <span id="s_color">${requestScope.close_month_avg}</span> 보다 큽니다.</li>
</c:if>
<c:if test="${requestScope.close_month le requestScope.close_month_avg}">
<li>또한, 골목상권의 평균 폐업 개월 수인 <span id="s_color">${requestScope.close_month_avg}</span> 보다 작습니다.</li>
</c:if>
</ul>
<br>
<hr>
<h5># job table</h5>
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 총 직장인구 수는 <span id="s_color">${requestScope.all_job_num}</span> 입니다.
<ul>
<c:if test="${requestScope.all_job_num gt requestScope.all_job_num_avg}">
<li>이것은 골목상권의 평균 총 직장인구 수인 ${requestScope.all_job_num_avg} 보다 큽니다.</li>
</c:if>
<c:if test="${requestScope.all_job_num le requestScope.all_job_num_avg}">
<li>이것은 골목상권의 평균 총 직장인구 수인 ${requestScope.all_job_num_avg} 보다 작습니다.</li>
</c:if>
</ul>
<hr>
# living_population
a 상권의 총 상주인구 수는 (living_population의 all_living_num)입니다.
이것은 골목상권의 평균 총 상주인구 수인 (living_population_view의 all_living_num_avg) 보다 (작습니다./큽니다)
<hr>
# apartment
a 상권의 아파트 단지수는 (apartment의 apart_num)입니다.
이것은 골목상권의 평균 총 아파트 단지 수인 (apartment_view의  apart_num_avg) 보다 (작습니다./큽니다.)
<hr>
# store
1) store_num 2) sim_store_num 3) start_rate 4)start_store_num 5)close_rate 
6) close_store_num
a 상권의 점포수는 1) 이고, 고객님이 선택하신 업종과 유사한 업종의 점포수는 2) 입니다.
a 상권의 개업률은 3) 이고 개업 점포 수는 4) 입니다. 
또한 a 상권의 폐업률은 5) 이고 폐업 점포 수는 6) 입니다.
a 상권의 개업률은 평균인 (store_view의 start_rate_avg)과 비교했을 때 (높고/낮고) 개업 점포 수는 평균인 (store_view의 start_store_num_avg)과 비교했을 때 (높습니다./낮습니다.)
a 상권의 폐업률은 평균인 (store_view의 close_rate_avg)과 비교했을 때 (높고/낮고) 개업 점포 수는 평균인 (store_view의 close_store_num_avg)과 비교했을 때 (높습니다./낮습니다.)
<hr>
</body>
</html>