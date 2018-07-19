<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<style>
#login_main {
	border:1px outset #4444ff;
	width:300px;
	padding:20px;
	box-sizing: border-box;
	margin:0 auto;
	box-shadow: 2px 2px 4px #888888;
}
#login_main>form>label{
	display: inline-block;
	width:60px;
}
#login_main #btnLogin{
	width:100px;height:40px;
	margin-left:70px;
}
.msg{
	font-size:11px;
	color:red;
	text-align: center;
}

</style>
</head>
<body>
<%
String msg = "";

String na=    "./html/html_index.jsp";
String ses =  "./html/anchor.jsp";
String asid = "./aside_html.jsp";

if(request.getParameter("nav") != null){
	na = request.getParameter("nav");
}
if(request.getParameter("oldsess") != null){
	ses = request.getParameter("oldsess");
}

if(request.getParameter("aside") != null){
	asid = request.getParameter("aside");
}



if( request.getAttribute("msg") != null){
		msg = (String)request.getAttribute("msg");
}else{
	msg = request.getParameter("msg");
}

if(msg == null) msg = "";
%>

<div id='login_main'>
	<h4>Login</h4>
	<form name='frm_login' method='post' action='./jsp/login_result.jsp'>
		<label>아이디</label>
		<input type='text' name='mid' value='park'><br/>
		
		<label>암&nbsp;&nbsp;&nbsp;호</label>
		<input type='password' name='pwd' value='park'><br/>
		
		<output name='msg' class='msg'><%=msg %></output><br/>
		<p/>
		<input type='submit' value='LOGIN' id='btnLogin' name='btnLogin'/>
		
		<input type='hidden' name='nav'   value='<%=na%>'/>
		<input type='hidden' name='sess'  value='<%=ses%>'/>
		<input type='hidden' name='aside' value='<%=asid%>'/>
	
	</form>

</div>
</body>
</html>