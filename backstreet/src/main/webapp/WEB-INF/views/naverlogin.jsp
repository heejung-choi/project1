<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html>
<head>
	<title>로그인</title>
</head>
<body>
<h1>
	로그인 예시
</h1>
<div id="naver_id_login"></div>
<script type="text/javascript"
		src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
		charset="utf-8"></script>

<script type="text/javascript">
		var clientId = "방금 발급받은거 넣으세요";
		var callbackUrl = "api신청할때 넣은 callback url 넣으세요";
		var naver_id_login = new naver_id_login(clientId, callbackUrl);
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("white", 3, 40);
		naver_id_login.setDomain("localhost:8000/BBS/main.jsp");
		naver_id_login.setState(state);
		naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
</script>
</body>
</html>
