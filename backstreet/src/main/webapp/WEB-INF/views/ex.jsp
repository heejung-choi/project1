<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scaclable=no">
	<title>김세정의 골목상권</title>	
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/css/style.css" rel="stylesheet">
	<link href="resources/css/jquery.fullPage.css" rel="stylesheet">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<style>
#nav{
background-color : #43459a;

}

.mainspan{
color:White;
font-size:1.2em;
}

.mainspan:hover{
color:gray;
}
#con{
background-color : #43459a;
height: 300px;
}
* {
	margin:0;
	padding:0;
   }
#container div {				
	width:250px;
	height:300px;
	background:#fff;
	box-shadow: 0px 1px 1px #aaa;
	padding:15px;
	padding-bottom:15px;
	margin:15px;				
}		
#container div img {
	width:100%;
	padding-bottom:15px;
	margin-bottom:5px;
}
#container div h2 {
	font-size:1em;
	color:black;
}
#container div p {
	font-family:"맑은 고딕", 돋움;
	font-size:0.8em;
	color:#222;
	margin:0;
	padding:10px;
}	
</style>
</head>
<body>
	<!-- 0311 jung main page 메뉴막대 부분, 한섹션식 스크롤 되도록 설정 -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
		<!-- 0311 jung 메뉴 토글 부분 -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- 0311 jung 로고 클릭시 메인화면으로 다시 불러오기 -->
			<a href="http://localhost:8000/backstreet/main" class="navbar-brand"><img src="resources/images/logo.png" width="30%" alt="김세정의 골목상권 로고"></a>
		</div>
		<div class="navbar-collapse collapse" id="nav">
			<ul class="nav navbar-nav">
				<li><a href="#"><span class="mainspan">사용가이드</span></a></li>
				<li><a href="#"><span class="mainspan">골목상권 분석</span></a></li>						
				<li><a href="#"><span class="mainspan">창업 컨설팅</span></a></li>
				<li><a href="#"><span class="mainspan">트랜드</span></a></li>			
				<li><a href="/backstreet/boardmain"><span class="mainspan">문의 게시판</span></a></li>
				<li><a href="#"><span class="mainspan">로그인</span></a></li>
			</ul>
		</div>
	</nav>				
	<!-- 0311 jung 한세션씩 스크롤하기 위해 class 속성에 section을 추가해준다. -->
	<div id="fullpage">
	<br><br>
	<div id="con" class="book-container section">	
	<h1>main</h1>
	</div>	
			<div id="book1" class="book-container section">				
			<div class="container">
			<br>
			<br>
				<h1>된다! 맥북 &amp; 아이맥 - 맥OS 하이 시에라 판</h1>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<img src="resources/images/book1.png" class="cover-image">
					</div>
					<div class="col-md-6 col-sm-6">
						<ul>
							<li>저자:김기백, 조영빈, 이민호</li>
							<li>발행일 : 2017-11-10</li>
							<li>ISBN-13 : 979-11-88612-07-9, 13000</li>
							<li>페이지 : 352쪽</li>
							<li>정가 : 15,800원</li>
						</ul>
					</div>	
				</div>				
				<div class="book-desc">
					<p class="accent">하루 만에 익혀 당당히 들고 나가자!<br>55만 팔로워 ‘맥가이버’ 운영진이 엄선한 맥 입문 핫코스!</p>
					<p> &lt;된다! 맥북&amp;아이맥&gt;가 가장 최신판인 맥OS 하이 시에라 판에 맞춰 전면 개정되었다.  
						맥을 위해 고시 공부하듯 많은 시간을 투자하는 것은 넌센스이다. 55만 팔로워를 돌파한 네이버 포스트 ‘맥가이버’ 운영진이 공개한 비법으로, 독자들은 순서대로 이 책을 보기만 해도 최단 기간에 세련된 애플 사용자가 될 수 있다. </p>
					</div>
				</div>
		</div>	
			
		<div id="book2" class="book-container section">				
				<div class="container">
					<h1>Do it! 웹사이트 기획 입문</h1>
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<img src="resources/images/book2.png" class="cover-image">
						</div>
						<div class="col-md-6 col-sm-6">
							<ul>
								<li>저자:이정원</li>
								<li>발행일 : 2017-08-29</li>
								<li>ISBN-13 : 979-11-87370-98-7, 13000</li>
								<li>페이지 : 392쪽</li>
								<li>정가 : 23,000원</li>
							</ul>
						</div>
					</div>
					<div class="book-desc">
						<p class="accent">고객은 못 보는 관리자용 화면 정의서까지, 쇼핑몰 설계도를 모두 공개!<br>
							실무 2년보다 이 책 한 권이 낫다! 꼭꼭 눌러 담은 웹 기획의 정석을 만나라! </p>						
							<p>글로 배워서는 자전거를 탈 수 없다. 기획도 마찬가지. 저자는 기획이란 누구나 배워 익힐 수 있는 실무적인 기술이기 때문에 직접 해 보는 것이 가장 효과적인 학습 방법이라고 주장한다. 이 책에서는 기획자가 쓰는 문서 양식과 쇼핑몰 웹 사이트를 만드는 전 과정과 공개했다. 한 단계씩 순차적으로 실습하면 진짜 웹 기획자의 일을 구체적으로 배울 수 있도록 설계한 것이다. </p>			
						</div>
					</div>
		</div>
				
		<div id="book3"  class="book-container section">				
					<div class="container">
						<h1>Do it! 쉽게 배우는 R 데이터 분석</h1>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<img src="resources/images/book3.png"  class="cover-image">
							</div>
							<div class="col-md-6 col-sm-6">
								<ul>
									<li>저자:김영우</li>
									<li>발행일 : 2017-07-20/li>
										<li>ISBN : 979-11-87370-94-9, 13000</li>
										<li>페이지 : 376쪽</li>
										<li>정가 : 20,000원</li>
									</ul>
								</div>
							</div>
							<div class="book-desc">
								<p class="accent">통계, 프로그래밍을 1도 몰라도 데이터를 혼자서 다룰 수 있다!<br>데이터 분석 프로젝트 전 과정 수록!</p>
								<p>데이터 분석을 처음 시작한 초보자도 어깨춤을 추며 데이터를 혼자 다룰 수 있게 한다는 강의가 책으로 출간되었다. 통계, 프로그래밍, 데이터 분석을 전혀 몰라도 「Do it! 쉽게 배우는 R 데이터 분석」을 통해 R로 최근 주목받고 있는 데이터 분석 기법들을 재미있게 배울 수 있다. 이 책은 데이터 정제, 가공, 분석부터 그래프 그리기까지 실제 현업에서 데이터 분석 프로젝트를 할 때와 같은 모든 과정을 직접 해볼 수 있다.</p>
							</div>
						</div>
		</div>
	
			<div id="video-list" class="container section">							
				<h1>동영상 강의</h1>
				<div class="row slide">            
								<div class="col-md-4 col-sm-4">
									<img src="resources/images/book4.png" class="cover-image">
								</div>
								<div class="col-md-8 col-sm-8">
									<h3>된다! 일러스트레이터 CC - 동영상 강의</h3>
									<p>강사: 모나미 &nbsp;&nbsp; 강좌수:23 &nbsp;&nbsp; 등록일:2017.06.26</p>          
									<p>《된다! 일러스트레이터 CC 》 저자 직강 무료 동영상 강의입니다! </p>
									<p>책에 있는 QR코드를 찍어도 볼 수 있습니다.^^</p>
									<p>▶ 재생목록 바로가기: https://goo.gl/X4dyPP</p>
								</div>
				</div>
				<div class="row slide">            
								<div class="col-md-4 col-sm-4">
									<img src="resources/images/book5.png" class="cover-image">
								</div>
								<div class="col-md-8 col-sm-8">
									<h3>Do it! 반응형 웹 만들기 - 동영상 강의</h3>
									<p>강사: 김운아 &nbsp;&nbsp; 강좌수:3강 &nbsp;&nbsp; 등록일:2017.05.19</p>          
									<p>Do it! 반응형 웹 만들기 무료 동영상 강의입니다! </p>
									<p>핵심적인 내용에 대해서 저자가 직접 강의하며 제작한 동영상입니다!</p>
									<p>반응형 웹을 공부하시는 분들께 많은 도움이 되기를 바랍니다.</p>
								</div>
				</div>
				<div class="row slide">            
								<div class="col-md-4 col-sm-4">
									<img src="resources/images/book6.png" class="cover-image">
								</div>
								<div class="col-md-8 col-sm-8">
									<h3>Do it! Node.js 프로그래밍 - 동영상 강의</h3>
									<p>강사: 정재곤 &nbsp;&nbsp; 강좌수:99 &nbsp;&nbsp; 등록일:2017.03.31</p>          
									<p>《Do it! Node.js 프로그래밍》 개정판 동영상 강의입니다.  </p>
									<p>저자 홈페이지인 tech-town.org 에서 다운로드받으실 수도 있습니다.</p>
								</div>
				</div>
			</div>
	
	</div>
					<script src="resources/js/jquery-2.2.4.min.js"></script>
					<script src="resources/js/bootstrap.min.js"></script>			
					<script src="resources/js/jquery.fullPage.js"></script>	
					
					<script>
						$(document).ready(function() {
							$("#fullpage").fullpage();
						});
					</script>
   
	</head>
	<body>
		<div id="container">
				<div>					
					<h2>골목상권 분석</h2>			
					<p>분석</p>
				
			</div>
				<div>					
					<h2>골목상권 분석</h2>			
					<p>분석 </p>
				</div>
				<div>					
					<h2>골목상권 분석</h2>			
					<p>분석</p>
				</div>
				<div>					
					<h2>골목상권 분석</h2>			
					<p>분석</p>
				</div>
			</div>						


		<script src="resources/js/jquery-2.2.4.min.js"></script>
    <script src="resources/js/jquery.vgrid.min.js"></script>  
    <script>
        $('#container').vgrid({
          time:400,
          delay:30,
          wait:500
        });
      </script>
				</body>
</html>