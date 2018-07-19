<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#nav > span {
		display: inline-block;
		width:85px;
		text-align: center;
		border:2px solid #aaaaaa;
		padding:5px;
		box-sizing: border-box;
		float:left;
		box-shadow: 2px 2px 4px #dddddd;
		border-right-width:0px;
		cursor: pointer;
	}
	#nav>span:nth-child(2n){
		background: #eeeeff;
	}
	#nav>span:nth-child(2n+1){
		background: #ffeeee;
	}

	#nav>span:hover{
		background: #cccccc;
	}	

	#nav>span:first-child {
		border-radius:20px 0 0 20px;
	}
	#nav>span:last-child {
		border-radius:0 20px 20px 0;
		border-right-width:2px;
	}
</style>
</head>
<body>
<h1>구조 선택자</h1>
<div id='nav'>
	<span>JAVA</span>
	<span>DB</span>
	<span>HTML5</span>
	<span>CSS3</span>
	<span>JS</span>
	<span>JSP</span>
	<span>AJAX</span>
	<span>JQUERY</span>
	<span>MYBATIS</span>
	<span>SPRING</span>
</div>
</body>
</html>