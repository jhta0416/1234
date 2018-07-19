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
	form에서 전달받은 값을	application, session, request, page에
	저장한 후 다시 확인해 보기
</h3>
<%
// form의 정보를 각 영역에 저장
if(request.getMethod().equals("POST")){
	String msg = request.getParameter("msg");
	application.setAttribute("msg",msg);
	session.setAttribute("msg",msg);
	request.setAttribute("msg", msg);
	pageContext.setAttribute("msg", msg);
}
%>
<ul>
	<li>Application : <%=application.getAttribute("msg") %> </li>
	<li>Session : <%=session.getAttribute("msg") %> </li>
	<li>Request : <%=request.getAttribute("msg") %> </li>
	<li>PageContext : <%=pageContext.getAttribute("msg") %> </li>
</ul>
<p/>
<a href='scope_result.jsp'>재 로딩...</a>











</body>
</html>