<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hap!!</title>
</head>
<body>
<form name = 'frm' method ='post'>
num1 : <input type='number' name = "num1"><br/>
num2 : <input type='number' name = "num2"><br/>

<input type ='submit' value = 'gogo'>
</form>
	<%
		request.setCharacterEncoding("utf-8");
		if(request.getMethod().equals("GET")) return;
	
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		int sum = 0;
		if(num2-num1 < 0){
			return;
		}else{
			int count = num2-num1+1;
			for(int i = num1; i<=num2 ; i++){
				sum += i;
			}
			
			double avg = (double)sum/count;
			
			out.print("<li> sum : "+ sum);
			out.print("<li> avg : "+ avg);
			
			
			
		}
	
	%>

</body>
</html>