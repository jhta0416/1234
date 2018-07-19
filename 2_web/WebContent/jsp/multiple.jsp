<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>multiple</title>
</head>
<body>
<form name='frm' method='post'>
	<label>정수 x</label>
	<input type='text' name='intx'/><br/>
	<label>정수 y</label>
	<input type='text' name='inty'/><br/>
	<label>정수 z</label>
	<input type='text' name='intz'/><br/>
	<br/>
	<input type='submit' value='계산'/><br/>
</form>
<hr/>

<%
	request.setCharacterEncoding("utf-8");
	if (request.getMethod().equals("GET")) return;
	
	int x = Integer.parseInt(request.getParameter("intx"));
	int y = Integer.parseInt(request.getParameter("inty"));
	int z = Integer.parseInt(request.getParameter("intz"));
	String zzz = " ";
		if (x <= y){
			for (int i=x ; i <= y; i++){
				if (i%z == 0){
					zzz += i + "    ";
				}
			}
		}
	out.print("<li>정수 x: " + x);
	out.print("<li>정수 y: " + y);
	out.print("<li>정수 z: " + z);
	out.print("<li>x~y사이의 수 중 z의 배수: " + zzz);
%>
</body>
</html>