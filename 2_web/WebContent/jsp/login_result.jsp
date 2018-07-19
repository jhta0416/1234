<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login_result</title>
</head>
<body>
<%
String mid = request.getParameter("mid").trim();
String pwd = request.getParameter("pwd").trim();
String url = "";

String na   ="./html/html_index.jsp";
String ses  = "./html/anchor.jsp";
String asid = "./aside_html.jsp";

if(request.getParameter("na") != null){
	na = request.getParameter("na");
}
if(request.getParameter("sess") != null){
	ses = request.getParameter("sess");
}

if(request.getParameter("aside") != null){
	asid = request.getParameter("aside");
}

url  = "../index.jsp" 
     + "?nav=" + na
     + "&sess=" + ses
     + "&aside=" + asid;


if(!mid.equals("") && !pwd.equals("")){
	session.setAttribute("session_id", mid);
	//response.sendRedirect(url);
	out.print("<script>location.href='" + url + "'</script>");

}else{
	/*
	RequestDispatcher dispatcher = 
			request.getRequestDispatcher("../index.jsp?sess=./jsp/login.jsp");
	request.setAttribute("msg", "아이디 또는 암호가 잘못되었습니다.");
	dispatcher.forward(request, response);
	*/
	
	out.print("<script>location.href='" + url + "&msg=똑바로~'</script>");
}

%>
</body>
</html>