<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel='stylesheet' type='text/css' href='myStyle.css'/>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>declare</title>
	<style>
		div {
			border:2px dashed #0000ff;
			width:300px; height:100px;
			font-size:30px;
		}	
		div.c1 {
			background-color:#ffff00;
		}
		div#n1{
			background-color:#aaaaff;
		}
		
	</style>
</head>
<body>
<h1>CSS를 선언하는 방법3가지</h1>

<!-- 1) tag에 직접 css 선언 -->
<font style='font-size:80px; color:#0000ff'>박원기</font><br/>
<input type='text' value='park w.g' style='color:#ff0000'/>

<!-- <style/>안에서 css 선언 -->
<div class='c1'>박원기</div>
<div id='n1'>홍길동</div>
<div class='c1'>일지매</div>

<span>수박</span>
<span>사과</span>
<span>배</span>
<span>복숭아</span>

<div>
	<div></div>
			<div></div>
					<div></div>
</div>










</body>
</html>