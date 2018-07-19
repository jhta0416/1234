<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>multiple2</title>
</head>
<body>
	<form name="frm" method="post" action="">
		<label>X</label>
		<label><input type="number" name="X"></label>
		<br/>
		<label><input type="submit" value="go"/></label>
	</form>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		if(request.getMethod().equals("GET")) return;
	
		int x = Integer.parseInt(request.getParameter("X"));
	
		for(int i=1; i<=x; i++){
			if(x%i == 0){
				out.print("<li>" + i);
			}
		}
	%>
</body>
</html>