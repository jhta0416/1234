<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			div {
				width: 400px;
				height: 250px;
			}
		
			#div1 {
				display: block;
				border: 2px solid #333333;
				box-shadow: 4px 4px 8px #aaaaaa;
				border-radius: 20px;
				background-image: url('../img/han.png');
				background-size: 100px 50px;
				background-repeat: no-repeat;
			}
			
			#div2{
				border: thin dashed black;
				border-radius: 20px;
				background-repeat: repeat-x;
				background-size: 50% 50%;
				background-image: url('../img/han.png');
			}
			
			#div3{
				border: 1px solid;
				border-radius: 20px 0 20px 0;
				background-size: 100% 100%;
				background-image: url('../img/han.png');
			}
			
			#div4{
				border: 1px solid;
				background-size: 100% 100%;
				background-image: url('../img/han.png');			
				background-attachment: fixed;
				overflow: scroll;
			}
			
			.font-gs {
					font-size:30px;
					font-family: 궁서체;			
			}
		</style>
	</head>
	<body>
		<h1>background-image 테스트</h1>
		<div id='div1'></div><p/>
		<div id='div2'></div><p/>
		<div id='div3'></div><p/>
		<div id='div4'>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
			<h1 class='font-gs'>임의의 문자열(궁서체)</h1>
		</div>
	
	</body>
</html>