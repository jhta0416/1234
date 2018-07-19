<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include_action_menu</title>
<style>
	a{
		text-decoration: none;
	}
	a:hover{
		background: #eeeeee;
	}
	ul, li{
		list-style: none;
		padding-left:0;
		margin-left:0;
	}
</style>
</head>
<body>
<h2>MENU</h2>
<ul>
	<li><a href='comp.jsp'>comp</a></li>
	<li><a href='?inc=gugudan.jsp'>gugudan</a></li>
	<li><a href='include_action_main.jsp?inc=hobby.jsp'>hobby</a></li>
	<li><a href='include_action_main.jsp?inc=multiple.jsp'>multiple</a></li>
	<li><a href='include_action_main.jsp?inc=score.jsp'>score</a></li>
	<li><a href='include_action_main.jsp?inc=score2.jsp'>score2</a></li>
	<li><a href='include_action_main.jsp?inc=score3.jsp'>score3</a></li>
</ul>
</body>
</html>












