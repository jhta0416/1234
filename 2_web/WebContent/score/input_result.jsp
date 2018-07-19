<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean  id='score' class='bean.ScoreVo' scope='page'/>
<jsp:setProperty property="*" name="score"/>

<div id='score_input_result'>
	<h3 id='title'>성적 입력 결과</h3>
	<ol>
		<li>ID : <%=score.getId() %> </li>
		<li>Subject : <%=score.getSubject() %> </li>
		<li>Date : <%=score.getNal() %> </li>
		<li>Score : <%=score.getScore() %> </li>
	</ol>
	
</div>
</body>
</html>