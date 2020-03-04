<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "vo.BoardVO,java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head><style>
	#title{
		text-align : center;
		font-weight : bold;		
		font-size : 36.5pt;
	}
	td{
		border-bottom : 1px solid black;
	}
	tr:hover{
		background-color : pink;	
		font-weight : bold;
	}
	td:nth-child(2)){
		width : 400px;
	}
	#writetext{
		text-align : center;
		margin : auto;
	}
	#write{
		text-align : center;
		margin : auto;
	}
	#reading{
		text-align : center;
		margin : auto;
	}
	#search{
		text-align : center;
		margin : auto;
	}
	.sub{
		text-align : center;
		font-weight : bold;
		font-size : 16.5pt;
	}
</style>
<body>
<%
	ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list");
	BoardVO listone = (BoardVO)request.getAttribute("listOne");
	System.out.println("listone:"+listone);
	if(list !=null){
%>
	<h2 id="title">사용자 문의 게시판</h2>
	<table style="margin:auto">
	<tr>
	<td class="sub" style="color:blue">번호</td>
	<td class="sub" style="color:red">제목</td>
	<td class="sub" style="color:purple">작성자</td>
	<td class="sub" style="color:orange">작성일</td>
	<td class="sub" style="color:green">조회수</td>
	</tr>
<%
	for(BoardVO vo : list){
%>
			<tr>
			<td class='<%= vo.getBoard_id() %>'><%= vo.getBoard_id() %></td>
			<td class='<%= vo.getBoard_id() %>' onclick="location.href='/backstreet/listOne?board_id=<%= vo.getBoard_id() %>'"><%= vo.getTitle() %></td>
			<td class='<%= vo.getBoard_id() %>' onclick="location.href='/backstreet/writer?writer=<%= vo.getWriter() %>'"><%= vo.getWriter() %></td>
			<td class='<%= vo.getBoard_id() %>'><%= vo.getWritedate() %></td>
			<td class='<%= vo.getBoard_id() %>'><%= vo.getCnt() %></td>
			</tr>			
<%
		}
%>
	</table>
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
<button onclick="displayDiv(1);">게시판 작성</button>
</div>

<%
	
	if (listone != null) {
		System.out.println("JSP 출력 :" + listone);
%>

<div id="reading">
<form method = "post" action = "/backstreet/update">
<input type="hidden" name="action" value="update">
<input type="hidden" name="id" value="<%= listone.getBoard_id() %>">
<% System.out.println("jsp문제인가"+listone.getBoard_id()); %>
<br>
<input id="m_writer" type="text"  name="writer" value="<%= listone.getWriter() %>">
<br>
<input id="m_title" type="text" name="title"  value="<%= listone.getTitle() %>">
<br>
<textarea id="m_content"  rows="3" cols="30" name = "content" ><%= listone.getContent() %></textarea>
<br>
<input type= "button" value ="확인" onclick="displayDiv(3)">
<input type= "submit" value ="수정" >
<input type= "button" value ="삭제" onclick="location.href ='/backstreet/delete?board_id=<%= listone.getBoard_id()%>'" >
</form>
</div>
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
<input type = "submit" value = "저장">
<input type = "reset" value = "재작성">
<button onclick="displayDiv(2);return false;">취소</button>
</form>
</div>


<div id="search">
<form method = "get" action ="/backstreet/search">
<input type="hidden" name="action" value="search">
<select name="searchType">
<option value = "content">내용</option>
<option value = "title">제목</option>
<option value = "writer">작성자</option>
</select>
<input type = "text" name = "keyword" >
<input type = "submit" value = "게시판 검색">
</form>
</div>
</body>
</html>
