<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='../javascript/mycss.css'/>
<title>Insert title here</title>
</head>
<body>
<h3 id='title'>
아이디, 성명, 연락처를 전달받아 선언문내에서 출력
</h3>
<%
 info(out, "aaaa","hong", "010-1111-1234");

%>

<%!
public void info(JspWriter out, String id, String name, String phone){
	try{
		out.print("<li> 아이디: " + id);
		out.print("<li> 성명: "   + name);
		out.print("<li> 연락처: " + phone);
		
	}catch(Exception ex){}
	
}
%>

</body>
</html>









