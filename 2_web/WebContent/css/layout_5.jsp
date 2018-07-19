<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
<!--초기화 -->
body{
	width:900px;
	margin:0 auto;
}
* { margin:0 ; padding:0; }
li { list-style: none;}
a{ text-decoration: none}
img{ border: 0}

#main_header{
	width:900px;
	margin:0 auto;
	height:190px;
	overflow: hidden;
	position:relative;
}

#title{
	position: absolute;
	left:20px; top:30px;
}

#main_gnb{
	position: absolute;
	right:0 ; top: 30px;
}

#main_lnb{
	position: absolute;
	right:0 ; bottom:10px;
}

#main_gnb > ul, #main_lnb > ul { overflow: hidden;}
#main_gnb > ul > li , #main_lnb > ul >li{float:left}
#main_gnb > ul > li > a {
	display: block;
	padding: 2px 2px;
	border:1px solid #000000;
}

#main_gnb > ul > li> a:hover , #main_lnb > ul >li > a:hover{
	background: black;
	color: white;
}

#main_gnb > ul > li:first-child >a {
	border-radius: 10px 0 0 10px;
}
#main_gnb > ul > li:last-child >a {
	border-radius: 0 10px 10px 0;
}


#main_lnb > ul > li > a {
	display: block;
	padding: 2px 2px;
	border:1px solid #000000;
}

#main_lnb > ul > li:first-child >a {
	border-radius: 10px 0 0 10px;
}
#main_lnb > ul > li:last-child >a {
	border-radius: 0 10px 10px 0;
}

#content{
	width:900px;
	margin:0 auto;
	overflow: hidden;
}

#content > #main_section{
	border:1px solid #aaaaaa;
	width:700px;height:300px;
	display:inline-block;
	float:left;
}

#conent > #main_aside{
	border:1px solid #aaaaaa;
	display:inline-block;
	witdh:200px;
	float:left;
}

/*첫번째 탭 */
input:nth-of-type(1) { display: none;}
input:nth-of-type(1) ~ div:nth-of-type(1){ display: none;}
input:nth-of-type(1):checked ~div:nth-of-type(1) {display: block;}

/*두번째 탭 */
input:nth-of-type(2) { display: none;}
input:nth-of-type(2) ~ div:nth-of-type(2){ display: none;}
input:nth-of-type(2):checked ~div:nth-of-type(2) {display: block;}

/*탭 모양 구성 */
section.buttons{ overflow: hidden;}
section.buttons > label{
	display: block;
	float:left;
	width:99px;height:30px;
	line-height: 30px;
	text-align: center;
	
	box-sizing: border-box;
	border: 1px solid black;
	
	background-color: black;
	color:white;
}

input:nth-of-type(1):checked~section.buttons > label:nth-of-type(1){
	background: white;
	color:black;
}
input:nth-of-type(2):checked~section.buttons > label:nth-of-type(2){
	background: white;
	color:black;
}

/* 목록 */
.item{
	overflow: hidden;
	padding:10px;
	border:1px solid black;
	border-top:none;
}

.thumbnail{
	float:left;
}

.desc{
	float:left;
	margin-left:10px;
}

</style>
</head>
<body>
<header id='main_header'>
	<div id='title'>
		<h1>1802기 화이팅</h1>
	</div>
	<nav id='main_gnb'>
		<ul>
			<li><a href='#'>Web</a></li>
			<li><a href='#'>Mobile</a></li>
			<li><a href='#'>Game</a></li>
			<li><a href='#'>Simulation</a></li>
			<li><a href='#'>Data</a></li>
		</ul>
	</nav>
	<nav id='main_lnb'>
		<ul>
				<li><a href='#'>HTML5</a></li>
				<li><a href='#'>CSS</a></li>
				<li><a href='#'>JAVASCRIPT</a></li>
				<li><a href='#'>JQUERY</a></li>
				<li><a href='#'>AJAX</a></li>
				<li><a href='#'>NODE.JS</a></li>
		</ul>
	
	</nav>
</header>

<div id='content'>
	<section id='main_section'>
		<p>내용.........</p>
		<p>내용.........</p>
		<p>내용.........</p>
		<p>내용.........</p>
	</section>	
	
	<aside id='main_aside'>
		<input type='radio' id='first' name='tab' checked />
		<input type='radio' id='second' name='tab'  />
		<section class='buttons'>
			<label for='first'>First</label>
			<label for='second'>Second</label>
		</section>
		<div class='tab_item'>
			<ul>
				<li class='item'>
					<a href='#'>
							<div class='thumbnail'>
								<img src='http://placehold.it/45x45' />
							</div>
							<div class='disc'>
								<strong>HTML5 Audio</strong>
								<span>2018-06-15</span>
							</div>
					</a>
				</li>

				<li class='item'>
					<a href='#'>
							<div class='thumbnail'>
								<img src='http://placehold.it/45x45' />
							</div>
							<div class='disc'>
								<strong>HTML5 Audio</strong>
								<span>2018-06-15</span>
							</div>
					</a>
				</li>
			</ul>
		</div>

		<div class='tab_item'>
			<ul>
				<li><a href='#'>CSS Audio2</a></li>
				<li><a href='#'>CSS Audio2</a></li>
				<li><a href='#'>CSS Audio2</a></li>
				<li><a href='#'>CSS Audio2</a></li>
				<li><a href='#'>CSS Audio2</a></li>
			</ul>
		</div>

	</aside>
		
</div>

<footer>
	<h1>Footer</h1>
</footer>


</body>
</html>