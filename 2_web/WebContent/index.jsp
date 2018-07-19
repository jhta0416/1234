<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=yes'>
<style>
	a{
		text-decoration: none;
	}
	#header{
		height:130px;
	}
	#section{
		padding:10px;
		box-sizing: border-box;
	}


</style>				
<link rel='stylesheet' type='text/css' href='index_max.css'
			media="screen and (min-width:1000px)" />

<link rel='stylesheet' type='text/css' href='index_mid.css'
			media="screen and (min-width:800px) and (max-width:999px)" />

<link rel='stylesheet' type='text/css' href='index_min.css'
			media="screen and (max-width:799px)" />

			
		
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String nav="./html/html_index.jsp";
String sess = "./html/anchor.jsp";
String aside = "aside_html.jsp";

if(request.getParameter("nav") != null){
	nav = request.getParameter("nav");
}
if(request.getParameter("sess") != null){
	sess = request.getParameter("sess");
}

if(request.getParameter("aside") != null){
	aside = request.getParameter("aside");
}

%>


<header id='header'><%@ include file='header.jsp' %></header>

<div id='content'>
	<nav id='nav'>
		<jsp:include page="<%=nav %>"/>
	</nav>
	<div id='section'>
		<jsp:include page="<%=sess %>"/>
	</div>
	<aside id='aside'>
		<jsp:include page="<%=aside %>"/>
	</aside>
</div>
fdasfdsafdasfdsafsdafs
<footer id='footer'><%@ include file='footer.jsp'%></footer>

</body>
</html>