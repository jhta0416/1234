<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#header_main{
	position: relative;
	height:100%;
	padding:0;
	
}
#top_menu{
	position: absolute;
	top:4px;
	right:4px;

}
#sub_menu{
	position: absolute;
	bottom:-10px;
	right:4px;
	overflow: hidden;
}

#sub_menu > li {
	float:left;
	border:1px solid #aaaaaa;
	padding:2px 6px;
	box-sizing: border-box;
	list-style: none;
	width:65px;
	font-size:12px;
	text-align: center;
}

#sub_menu > li:first-child{
	border-radius: 7px 0 0  7px;
}
#sub_menu > li:last-child{
	border-radius: 0 7px 7px 0;
}

#sub_menu li:hover {
	background-color: #000;
}
#sub_menu a{
	color:#fff;
	font-weight: bold;
}
#sub_menu a:hover {
	color:#fff;
}
</style>
<script>
	
	var loginInit=function(nav, sess, aside){
		var btnLogin = document.getElementById('btnLogin');
		var btnLogout = document.getElementById('btnLogout');
		var url = 'index.jsp'
		        + '?nav='     + nav
		        + '&aside='   + aside
		        + '&oldsess=' + sess;

		if(btnLogin != null){
			btnLogin.onclick = function(){
				location.href=url + '&sess=./jsp/login.jsp'		
			}
		}
		
		window.onload = function(){
			self.close();
		}
		
		if(btnLogout != null){
			btnLogout.onclick = function(){
				location.href=url + '&sess=./jsp/logout.jsp';
			}
		}
	}

</script>

</head>
<body>
<%
String session_id = (String)session.getAttribute("session_id");
String na="./html/html_index.jsp";
String ses = "./html/anchor.jsp";
String asid = "aside_html.jsp";

if(request.getParameter("nav") != null){
	na = request.getParameter("nav");
}
if(request.getParameter("sess") != null){
	ses = request.getParameter("sess");
}

if(request.getParameter("aside") != null){
	asid = request.getParameter("aside");
}

%>
<div id='header_main'>
	<div id='top_menu'>
		<%if(session_id == null){ %>
			<input type='button' value='로그인' id='btnLogin' />
		<%}else{ %>
			<input type='button' value='로그아웃' id='btnLogout' />
			<%} %>
	</div>
	
	<ul id='sub_menu'>
		<li><a href='?nav=./html/html_index.jsp&aside=aside_html.jsp'>HTML</a></li>
		<li><a href='?nav=./css/css_index.jsp&aside=aside_css.jsp'>CSS</a></li>
		
		<li><a href='#'>JS</a></li>
		<li><a href='#'>JSP</a></li>
		<li><a href='#'>AJAX</a></li>
		<li><a href='#'>JQUERY</a></li>
		<li><a href='#'>MYBATIS</a></li>
		<li><a href='?nav=./member/member_control.jsp&sess=./member/member_info.jsp'>회원관리</a></li>
		<li><a href='?nav=./score/score_control.jsp&sess=./score/score_info.jsp'>성적관리</a></li>
	</ul>
</div>
<script>loginInit('<%=na%>','<%=ses%>','<%=asid%>');</script>
</body>
</html>










