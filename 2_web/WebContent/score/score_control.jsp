<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='./lib_css/mycss.css' />
<style>
#member_control > #title{
	text-align: center;
}
</style>
</head>
<body>
<div id='score_control'>
<h3 id='nav_title'>성적관리</h3>
<ol>
	<li><a href='index.jsp?nav=./score/score_control.jsp&sess=./score/input.jsp'>성적입력</a>
	<li><a href='index.jsp?nav=./score/score_control.jsp&sess=./score/list.jsp'>성적조회</a>
</ol>

</div>
</body>
</html>