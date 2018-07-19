<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id='member_register_result'>
	<id id='title'>회원입력 결과</id>
	<jsp:useBean  id='member' class='bean.MemberVo' scope='page'/>
	<jsp:setProperty property="*" name="member"/>
	
	<ol>
		<li>ID : <%=member.getId() %> </li>
		<li>Name : <%=member.getName() %> </li>
		<li>Pwd : <%=member.getPwd() %> </li>
		<li>Email : <%=member.getEmail() %> </li>
	</ol>
	
	
	
</div>
</body>
</html>