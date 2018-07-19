<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form3</title>
</head>
<body>
<h3>form3</h3>
<form name='frm' method='post'>
	<label>아이디</label>
	<input type='text' name='mid'><br/>
	<label>암호</label>
	<input type='password' name='pwd'><br/>
	<label>연락처</label>
	<input type='text' name='phone'><br/>
	<label>주 소</label>
	<input type='text' name='address' size='50'><br/>

	<label>성별</label>
	<label><input type='radio' name='gender' value='남'>남</label>
	<label><input type='radio' name='gender' value='여'>여</label>
	<p/>
	<label>먹고싶은 과일들</label><br/>
	<label><input type='checkbox' name='fruits' value='사과'>사과</label>
	<label><input type='checkbox' name='fruits' value='배'>배</label>
	<label><input type='checkbox' name='fruits' value='복숭아'>복숭아</label>
	<br/>
	<label><input type='checkbox' name='fruits' value='수박'>수박</label>
	<label><input type='checkbox' name='fruits' value='참외'>참외</label>
	<label><input type='checkbox' name='fruits' value='딸기'>딸기</label>
	<p/>
	<label>사진<input type='file' name='picture'></label>
	<br/>
	<label>자기소개</label><br/>
	<textarea cols='40' rows='6' name='info'></textarea>
	
	<p/>
	<input type='submit' value='전송'/>
</form>

<%
if(request.getMethod().equals("GET")) return;
request.setCharacterEncoding("utf-8");
%>
<h3>결과</h3>
<ul>
	<li>mid : <%=request.getParameter("mid") %></li>
	<li>pwd : <%=request.getParameter("pwd") %></li>
	<li>phone : <%=request.getParameter("phone") %></li>
	<li>address : <%=request.getParameter("address") %></li>
	<li>gender : <%=request.getParameter("gender") %></li>
	<li>fruits : <%=Arrays.toString(request.getParameterValues("fruits") )%></li>
	<li>picture : <%=request.getParameter("picture") %></li>
	<li>info : <%=request.getParameter("info") %></li>
	
</ul>

</body>
</html>

















