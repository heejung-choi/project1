<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, user-scaclable=no">
<title>김세정의 골목상권</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/jquery.fullPage.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/jquery.bxslider.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:700&display=swap" rel="stylesheet">
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
 <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
   integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
   crossorigin=""/>
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
   integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
   crossorigin=""></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11a0af5b8b304b124286ecc7e4c2099e&libraries=clusterer"></script>
  <style>

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);

body,h1,h2,h3,h4,h5,table,button{
 font-family: 'Nanum Gothic Coding', monospace;
}


#color-change {
   background-color: white;  /* 위에 배너 컬러 */
   text-align:center;
}

.mainspan {
   color: black;
   font-size: 1.2em;
}

.mainspan:hover {
   color: gray;
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
li{
display:inline-block;
}
ul{
text-align:center;
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
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span>
         </button>
         <!-- 0311 jung 로고 클릭시 메인화면으로 다시 불러오기 -->
         
      </div>
      <div id="color-change">
      <div class="navbar-collapse collapse">     
      <a href="http://localhost:8000/backstreet/main" class="navbar-brand"><img src="resources/images/blacklogo.png"  width="30%" ></a>            
	<br>
      <ul class="nav navbar-nav" id="mainlist">      
      <li><a href="http://localhost:8000/backstreet/intro"><span class="mainspan"> 사용가이드</span></a></li>
      <li><a href="http://localhost:8000/backstreet/map"><span class="mainspan"> 골목상권 분석</span></a></li>
      <li><a href="http://localhost:8000/backstreet/consulting"><span class="mainspan"> 창업 컨설팅</span></a></li>
      <li><a href="http://localhost:8000/backstreet/trands"><span class="mainspan"> 트랜드</span></a></li>
      <li><a href="http://localhost:8000/backstreet/boardmain"><span class="mainspan">고객센터</span></a></li>
	<li><a href="http://localhost:8000/backstreet/loginView"><span class="mainspan">로그인</span></a></li>
      </ul>
      </div>
      </div>
   </nav> 
         <script src="resources/js/jquery-2.2.4.min.js"></script>
      <script src="resources/js/bootstrap.min.js"></script>
      <script src="resources/css/jquery.fullpage.js"></script>

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
   <br><br><br><br><br><br><br>
<div id="map" style="width: 100%; height: 600px;"></div>
<script>
	var mymap = L.map('map').setView([37.5205636, 127], 12);

	L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
		maxZoom: 18,
		attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
			'<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
			'Imagery <a href="https://www.mapbox.com/">Mapbox</a>',
		id: 'mapbox.streets'
	}).addTo(mymap);
	
	//geojson 파싱하는 부분
	var xhr = new XMLHttpRequest();
	xhr.onload =  function() { 
		console.log(xhr.status)
		if(xhr.status == 200) {
			var str = xhr.responseText;
			var data = JSON.parse(str);
			//console.log(data)
			//console.log("1번 상권 코드명 : "+data.features[0].properties.area_id)
			//console.log("1번 상권 이름 : "+data.features[0].properties.area_coname)
			//console.log("1번 설명 : "+data.features[0].properties.description)
			//console.log(data.features.length)
			for(i=0;i<data.features.length;i++){
				var lat = data.features[i].properties.latitude;
				var lng = data.features[i].properties.longitude;
				var areaId = data.features[i].properties.area_id;
				var area = data.features[i].properties.area_coname;
				var desc = data.features[i].properties.description;
				
				L.marker([lat,lng]).addTo(mymap)
				.bindPopup('<h3>'+area+'</h3>'+desc+'<br>'+'<a href="/backstreet/searchreport?area_id='+areaId+'&area_coname='+area+'" target="_self">자세한 내용 확인</a>').openPopup();
			}
			
		}
 	 };
    xhr.open("GET", "../backstreet/resources/area_for_json1.geojson", true);
	xhr.send();   
	
</script>



</body>
</html>