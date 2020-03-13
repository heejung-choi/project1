<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트렌드 검색 결과</title>
<style>
	aaa{
		width: 100px;
		height: 120px;
	}
	bbb{
		width: 50px;
		height : 50px;
	}
</style>
</head>
<body>
<div id="aaa">
<a href="${requestScope.json[2]}"><img src="${requestScope.json[4]}" alt="??"></img></a>
<h4><a href="${requestScope.json[2]}">${requestScope.json[0]}</a></h4>
<div id="bbb"><h5><a href="${requestScope.json[2]}">${requestScope.json[1]}</a></h5></div>
<h6>${requestScope.json[5]}</h6>
</div>
</body>
</html>