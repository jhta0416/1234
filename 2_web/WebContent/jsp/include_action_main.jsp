<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include_action_main</title>
<style>
#main{
	width:900px;
	margin:0 auto;
	overflow: hidden;
}
#left{
	padding:5px;
	display:inline-block;
	box-sizing: border-box;
	float:left;
	width:200px;
	border:2px solid #eeeeee;
}

#right{
	display:inline-block;
	padding:5px;
	box-sizing: border-box;
	width:700px;
}
#footer{
	clear:both;
	width:100%;
	height:60px;
	background: #eeeeee;
	box-shadow: 3px 3px 5px #888888;
	text-align: center;
	line-height: 60px;
}
</style>
</head>
<body>
<%
String inc = "comp.jsp";//초기에 include될 파일
if( request.getParameter("inc") != null){
	inc = request.getParameter("inc");
}


%>

<div id='main'>	
	<h3>include action main</h3>
	
	<nav id='left'>
		<jsp:include page="include_action_menu.jsp" />
	</nav>
	<section id='right'>
		<jsp:include page="<%=inc %>"/>
	</section>

	<footer id='footer'>
		HTA-1802
	</footer>
</div>
</body>
</html>