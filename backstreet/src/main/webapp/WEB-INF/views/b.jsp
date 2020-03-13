<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "vo.BoardVO,java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head><style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

table.type1 {
	border-collapse: separate;
    border-spacing: 1px;
    text-align: center;
    line-height: 1.5;
    margin: 20px 10px;

}

table.type1 th {
    width: 155px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
    background:#e7708d ;
}
table.type1 td {
    width: 155px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #eee;
}
tr:hover{
font-weight : bold;
}
#d {
	width: 300px;
}

#all {
	width : 60%;
	margin-left : auto;
	margin-right : auto;	
	padding: 50px;
	border-style: dotted dashed solid double;
	border-color: gray;
	font-family: 'Hanna', sans-serif;
		
}
h1{
	font-size: 3em;
  	text-align:center;
  	text-shadow: 2px 2px 4px #000000;
}
textarea {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #eee;
  font-size: 16px;
  resize: none;
}
input[type=text] {
  width: 80%;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: #eee;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
}
select {
width: 200px;
padding: .8em .5em;
border: 1px solid #999;
border-radius: 0px;

}

.button {
  display: inline-block;
  padding: 10px 15px;
  font-size: 10px;
  cursor: pointer;
  text-align: center;
  outline: none;
  color: #fff;
  background-color: #e7708d;
  border: none;
  border-radius: 15px;
  box-shadow: 0 2px #999;
}

.button:hover {
background-color: #b366ff
}

#deco{
  color: #ff99bb;  
}
img{ 
	width: 100%; 
	display: block;
	margin-botton: -3px;

}
</style>
<body>
<div id="all">
<%String ac = (String)request.getAttribute("ac");%>


<%
	ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list");
	BoardVO listone = (BoardVO)request.getAttribute("listOne");
	System.out.println("listone:"+listone);
	if(list !=null){
%>
	<h1 id="deco">사용자 문의 게시판</h1><hr>
	<table class="type1">
	<tr>
	<td>번호</td>
	<td>제목</td>
	<td>작성자</td>
	<td>작성일</td>
	<td>조회수</td>
	</tr>
<%
	for(BoardVO vo : list){
%>
			<tr>
			<td><%= vo.getBoard_id() %></td>
			<td onclick="location.href='/backstreet/listOne?board_id=<%= vo.getBoard_id() %>'"><%= vo.getTitle() %></td>
			<td onclick="location.href='/backstreet/writer?writer=<%= vo.getWriter() %>'"><%= vo.getWriter() %></td>
			<td id="d"><%= vo.getWritedate() %></td>
			<td><%= vo.getCnt() %></td>
			</tr>			
<%
		}
%>
	</table>
	<hr>
	<div id="search">
<form method = "get" action ="/backstreet/search">
<input type="hidden" name="action" value="search">
<select name="searchType">
<option value = "content">내용</option>
<option value = "title">제목</option>
<option value = "writer">작성자</option>
</select>
<input type = "text" placeholder="search.." name = "keyword" >
<input type = "submit" value = "게시판 검색" class="button">
</form>
</div>
<hr>
	
	
<%
	}
	if (request.getAttribute("msg") != null) {
%>
	<script>
		alert('${ msg }');
	</script>

<%
	}
%>

<div id="writetext">
<button onclick="displayDiv(1);" class="button">게시판 작성</button>
</div>

<%
	
	if (listone != null) {
		System.out.println("JSP 출력 :" + listone);
%>

<div id="reading">
<form method = "post" action = "/backstreet/update">
<input type="hidden" name="action" value="update">
<input type="hidden" name="id" value="<%= listone.getBoard_id() %>">
<br>
<input id="m_writer" type="text"  name="writer" value="<%= listone.getWriter() %>">
<br>
<input id="m_title" type="text" name="title"  value="<%= listone.getTitle() %>">
<br>
<textarea id="m_content"  rows="3" cols="30" name = "content" ><%= listone.getContent() %></textarea>
<br>
<input type= "button" value ="확인" onclick="displayDiv(3)" class="button">
<input type= "submit" value ="수정" class="button" >
<input type= "button" value ="삭제" onclick="location.href ='/backstreet/delete?board_id=<%= listone.getBoard_id()%>'" class="button" >
</form>
</div>
<hr>
<%
	}
%>

<script>
function displayDiv(type) {
	if(type == 1) {
		document.getElementById("write").style.display='block';
	}else if(type == 2) {
		document.getElementById("write").style.display='none';
	}
	else if(type == 3){
		document.getElementById("reading").style.display='none';
	}
}
</script>
<div id="write"  style="display:none">
<form method = "post" action = "/backstreet/insert">
<input type="hidden" name="action" value="insert">
<input type="text"  name="writer" placeholder="작성자명을 입력해주세요">
<br>
<input type="text" name="title" placeholder="제목을 입력해주세요">
<br>
<textarea rows="3" cols="30" name = "content" placeholder="내용을 입력해주세요" ></textarea>
<br>
<input type = "submit" value = "저장" class="button">
<input type = "reset" value = "재작성" class="button">
<button onclick="displayDiv(2);return false;" class="button">취소</button>
</form>
<br>
</div>



</div>
</body>
</html>
