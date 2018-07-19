<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form1</title>
</head>
<body>
	<form name='frm' method='post'>
		<label for='mid'>아이디</label>
		<input type='text' id='mid' name='mid' value='park' size='6' maxlength="5"/><br/>
		
		<input type='button' value='버튼'/><br/>
		<label>취미</label><br/>
		
		<input type='checkbox' name='hobby' value='축구'/>축구<br/>
		<input type='checkbox' name='hobby' value='야구'/>야구<br/>
		<input type='checkbox' name='hobby' value='배구'/>배구<br/>
		
		<label><input type='checkbox' name='hobby' value='농구'/>농구</label><br/>
		<label><input type='checkbox' name='hobby' value='비치발리볼'/>비치발리볼</label><br/>
		<label><input type='checkbox' name='hobby' value='탁구'/>탁구</label><br/>
		
		<input type='file' name='attfile'/><br/>
		
		<input type='hidden' name='hiidenvalue'/><br/>
		
		<input type='image' src = '../img/gu.png' width='30'/><br/>
		
		<label>암호</label><input type='password' name='pwd'/><br/>
		
		<label>성별 [</label>
		<label><input type='radio' name='gender'/>남자</label>
		<label><input type='radio' name='gender'/>여자</label>
		<label><input type='radio' name='gender'/>혹시</label> ]<br/>
		
		
		<input type='reset'/><br/>
		<input type='submit'/><br/>
	</form>
<% //jsp영역
//form의 method 속성이 get이면 리턴
if ( request.getMethod().equals("GET") ) return;
request.setCharacterEncoding("UTF-8");				
%>
<ul>
	<li>아이디 : <%=request.getParameter("mid") %></li>
	<li>취미 : <%=Arrays.toString(request.getParameterValues("hobby")) %></li>
	<li>첨부파일명 : <%=request.getParameter("attfile") %> </li>
	<li>히든값 : <%=request.getParameter("hiddenvalue") %></li>
	<li>암호 : <%=request.getParameter("pwd") %> </li>
	<li>성별 : <%=request.getParameter("gender") %> </li>
</ul>


</body>
</html>













