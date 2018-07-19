<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='./lib_css/mycss.css' />

<title>html_index</title>
</head>
<body>
<div id='nav_title'>HTML</div>
<%
String url = "index.jsp?nav=./html/html_index.jsp&aside=aside_html.jsp";
%>
<ol>
	<li><a href='<%=url %>&sess=./html/anchor.jsp'>anchor</li>
	<li><a href='<%=url %>&sess=./html/dl.jsp'>dl.jsp</a>


</ol>
</body>
</html>