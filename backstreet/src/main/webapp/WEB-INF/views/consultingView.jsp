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

<h5># living_population</h5>
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 총 상주인구 수는 <span id="s_color">${requestScope.all_living_num}</span> 입니다.
<ul>
<c:if test="${requestScope.all_living_num gt requestScope.all_living_num_avg}">
<li>이것은 골목상권의 평균 총 상주인구 수인 <span id="s_color">${requestScope.all_living_num_avg}</span> 보다 큽니다.</li>
</c:if>
<c:if test="${requestScope.all_living_num le requestScope.all_living_num_avg}">
<li>이것은 골목상권의 평균 총 상주인구 수인 <span id="s_color">${requestScope.all_living_num_avg}</span> 보다 작습니다.</li>
</c:if>
</ul>
<hr>

<h5># apartment</h5>
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 아파트 단지수는 <span id="s_color">${requestScope.apart_num}</span>입니다.
<ul>
<c:if test="${requestScope.apart_num gt requestScope.apart_num_avg}">
<li>이것은 골목상권의 평균 총 아파트 단지 수인 <span id="s_color">${requestScope.apart_num_avg}</span> 보다 큽니다.</li>
</c:if>
<c:if test="${requestScope.apart_num le requestScope.apart_num_avg}">
<li>이것은 골목상권의 평균 총 아파트 단지 수인 <span id="s_color">${requestScope.apart_num_avg}</span> 보다 작습니다.</li>
</c:if>
</ul>
<hr>
<h5># store</h5>
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 점포수는 <span id="s_color">${requestScope.store_num}</span> 이고,
고객님이 선택하신 업종과 유사한 업종의 점포수는 <span id="s_color">${requestScope.sim_store_num}</span> 입니다.
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 개업률은 <span id="s_color">${requestScope.start_rate}</span> 이고,
 개업 점포 수는 <span id="s_color">${requestScope.start_store_num}</span> 입니다. 
또한, <span id="s_color">${requestScope.areaCodeName}</span> 상권의 폐업률은 <span id="s_color">${requestScope.close_rate}</span> 이고,
 폐업 점포 수는 <span id="s_color">${requestScope.close_store_num}</span> 입니다.


<c:if test="${requestScope.start_rate gt requestScope.start_rate_avg}">
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 개업률은 평균인 <span id="s_color">${requestScope.start_rate_avg}%</span>와 비교했을 때 높고,
   <c:if test="${requestScope.store_num gt requestScope.start_store_num_avg}">
   개업 점포 수는 평균인 <span id="s_color">${requestScope.start_store_num_avg}</span>과 비교했을 때 높습니다.
   </c:if>
   <c:if test="${requestScope.store_num le requestScope.start_store_num_avg}">
   개업 점포 수는 평균인 <span id="s_color">${requestScope.start_store_num_avg}</span>과 비교했을 때 낮습니다.
   </c:if>
</c:if>

<c:if test="${requestScope.start_rate le requestScope.start_rate_avg}">
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 개업률은 평균인 <span id="s_color">${requestScope.start_rate_avg}%</span>와 비교했을 때 낮고,
   <c:if test="${requestScope.store_num gt requestScope.start_store_num_avg}">
   개업 점포 수는 평균인 <span id="s_color">${requestScope.start_store_num_avg}</span>과 비교했을 때 높습니다.
   </c:if>
   <c:if test="${requestScope.store_num le requestScope.start_store_num_avg}">
   개업 점포 수는 평균인 <span id="s_color">${requestScope.start_store_num_avg}</span>과 비교했을 때 낮습니다.
   </c:if>
</c:if>

<c:if test="${requestScope.close_rate gt requestScope.close_rate_avg}">
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 폐업률은 평균인 <span id="s_color">${requestScope.close_rate_avg}%</span>와 비교했을 때 높고,
   <c:if test="${requestScope.close_rate gt requestScope.close_rate_avg}">
   폐업 점포 수는 평균인 <span id="s_color">${requestScope.close_rate_avg}</span>과 비교했을 때 높습니다.
   </c:if>
   <c:if test="${requestScope.close_rate le requestScope.close_rate_avg}">
   폐업 점포 수는 평균인 <span id="s_color">${requestScope.close_rate_avg}</span>과 비교했을 때 낮습니다.
   </c:if>
</c:if>

<c:if test="${requestScope.close_rate lt requestScope.close_rate_avg}">
<span id="s_color">${requestScope.areaCodeName}</span> 상권의 폐업률은 평균인 <span id="s_color">${requestScope.close_rate_avg}%</span>와 비교했을 때 낮고,
   <c:if test="${requestScope.close_rate gt requestScope.close_rate_avg}">
   폐업 점포 수는 평균인 <span id="s_color">${requestScope.close_rate_avg}</span>과 비교했을 때 높습니다.
   </c:if>
   <c:if test="${requestScope.close_rate le requestScope.close_rate_avg}">
   폐업 점포 수는 평균인 <span id="s_color">${requestScope.close_rate_avg}</span>과 비교했을 때 낮습니다.
   </c:if>
</c:if>
<hr>
</body>
</html>