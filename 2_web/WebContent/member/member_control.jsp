<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='./lib_css/mycss.css' />
<style>
#member_control > #title{
	text-align: center;
}
</style>
</head>
<body>
<div id='member_control'>
<h3 id='nav_title'>회원관리</h3>
<ol>
	<li><a href='index.jsp?nav=./member/member_control.jsp&sess=./member/register.jsp'>회원가입</a>
	<li><a href='index.jsp?nav=./member/member_control.jsp&sess=./member/list.jsp'>회원조회</a>
</ol>

</div>
</body>
</html>