<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='./lib_css/mycss.css' />

<title>Insert title here</title>
</head>
<body>
<div id='nav_title'>CSS</div>
<%
	String url = "index.jsp?nav=./css/css_index.jsp&aside=aside_css.jsp";
%>
<ol>
	<li><a href='<%=url%>&sess=./css/border.jsp'>border</a></li>
	<li><a href='<%=url%>&sess=./css/form3.jsp'>form3</a></li>
	<li><a href='<%=url%>&sess=./css/display.jsp'>display</a></li>
</ol>
</body>
</html>