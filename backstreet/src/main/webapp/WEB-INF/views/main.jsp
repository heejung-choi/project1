<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scaclable=no">
<title>김세정의 골목상권</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/jquery.fullPage.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/jquery.bxslider.css">

<style>
#nav {
	background-color: #43459a;
}

.mainspan {
	color: White;
	font-size: 1.2em;
}

.mainspan:hover {
	color: gray;
}

#con {
	background-color: #43459a;
	height: 300px;
}

* {
	margin: 0;
	padding: 0;
}

#container div {
	width: 250px;
	height: 300px;
	background: #fff;
	box-shadow: 0px 1px 1px #aaa;
	padding: 15px;
	padding-bottom: 15px;
	margin: 15px;
}

#container div img {
	width: 100%;
	padding-bottom: 15px;
	margin-bottom: 5px;
}

#container div h2 {
	font-size: 1em;
	color: black;
}

#container div p {
	font-family: "맑은 고딕", 돋움;
	font-size: 0.8em;
	color: #222;
	margin: 0;
	padding: 10px;
}

#wrapper {
	width: 600px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<!-- 0311 jung main page 메뉴막대 부분, 한섹션식 스크롤 되도록 설정 -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<!-- 0311 jung 메뉴 토글 부분 -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- 0311 jung 로고 클릭시 메인화면으로 다시 불러오기 -->
			<a href="http://localhost:8000/backstreet/main" class="navbar-brand"><img
				src="resources/images/logo.png" width="30%" alt="김세정의 골목상권 로고"></a>
		</div>
		<div class="navbar-collapse collapse" id="nav">
			<ul class="nav navbar-nav">
				<li><a href="#"><span class="mainspan">사용가이드</span></a></li>
				<li><a href="#"><span class="mainspan">골목상권 분석</span></a></li>
				<li><a href="#"><span class="mainspan">창업 컨설팅</span></a></li>
				<li><a href="#"><span class="mainspan">트랜드</span></a></li>
				<li><a href="/backstreet/boardmain"><span class="mainspan">문의
							게시판</span></a></li>
				<li><a href="#"><span class="mainspan">로그인</span></a></li>
			</ul>
		</div>
	</nav>
	<!-- 0311 jung 한세션씩 스크롤하기 위해 class 속성에 section을 추가해준다. -->
	<div id="fullpage">
		<br> <br>
		<div id="con" class="book-container section">
			<h1>main</h1>
		</div>

		<div id="wrapper">
			<div class="bxslider">
				<div>
					<img src="resources/images/1.jpg" title="1">
				</div>
				<div>
					<img src=resources/images/2.jpg " title="2">
				</div>
				<div>
					<img src="resources/images/3.jpg" title="3">
				</div>
				<div>
					<img src="resources/images/4.jpg" title="4">
				</div>
			</div>
		</div>
		<script src="resources/js/jquery-2.2.4.min.js"></script>
		<script src="resources/js/jquery.bxslider.js"></script>
		<script>
			var h1dom = document.getElementsByTagName("h1")[0];

			$('.bxslider').bxSlider({
				slideWidth : 600,
				captions : true,
				auto : true,
				autoControls : true,
				stopAutoOnclick : true,
			});
		</script>
		<div id="book1" class="book-container section">
			<div class="container">
				<h1>자사의 컨설팅을 받은 기업들</h1>
				<div class="book-desc">
					<p class="accent">
						김세정의 골목상권의 <br>컨설팅 서비스를 받은 기업들!!
					</p>
					<p>&lt;야! 너두&amp;할수있어&gt;당신도 김세정의 골목상권의 컨설팅 서비스를 받는다면 성공한 기업으로
						바뀔 수 있습니다. 당신도 할수있습니다 !!!</p>
				</div>
			</div>
		</div>

		<div class="book-container section">
			<div id="container">
				<div>
					<h2>골목상권 분석</h2>
					<p>분석</p>

				</div>
				<div>
					<h2>골목상권 분석</h2>
					<p>분석</p>
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
		</div>
		<script src="resources/js/jquery-2.2.4.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/jquery.fullPage.js"></script>

		<script>
			$(document).ready(function() {
				$("#fullpage").fullpage();
			});
		</script>



		<script src="resources/js/jquery-2.2.4.min.js"></script>
		<script src="resources/js/jquery.vgrid.min.js"></script>
		<script>
			$('#container').vgrid({
				time : 400,
				delay : 30,
				wait : 500
			});
		</script>
</body>
</html>