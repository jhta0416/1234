<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>table</title>
</head>
<body>
	<h3>기본테이블</h3>
	<table border='10'>
		<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
		</tr>
		
		<tr>
				<td>5</td>		
				<td>6</td>		
				<td>7</td>		
				<td>8</td>		
		</tr>
		
		<tr>
				<td>9</td>		
				<td>10</td>		
				<td>11</td>		
				<td>12</td>		
		</tr>
		
		<tr>
				<td>13</td>		
				<td>14</td>		
				<td>15</td>		
				<td>16</td>		
		</tr>
	</table>
	<p/>
	<!-- 상하반기 -->
	<table border='1'>
		<tr>
			<td colspan='2'>상반기</td>
			<td colspan='2'>하반기</td>
		</tr>	
		
		<tr>
			<td>3</td>
			<td>6</td>
			<td>9</td>
			<td>12</td>			
		</tr>		
		<tr>
			<td>a</td>
			<td>b</td>
			<td>c</td>
			<td>d</td>			
		</tr>		
		<tr>
			<td>e</td>
			<td>f</td>
			<td>g</td>
			<td>h</td>			
		</tr>		
			
	</table>
	<p/>
<!-- 실적(가로) -->	
	<table border='1'>
		<tr>
			<td colspan='4'>실적</td>
		</tr>	
	
		<tr>
			<td rowspan='2'>상반기</td>
			<td>3</td>
			<td>a</td>
			<td>b</td>
		</tr>

		<tr>
			<td>6</td>
			<td>c</td>
			<td>d</td>
		</tr>		
		
		<tr>
			<td rowspan='2'>하반기</td>
			<td>9</td>
			<td>e</td>
			<td>f</td>
		</tr>
		
		<tr>
			<td>12</td>
			<td>g</td>
			<td>h</td>
		</tr>
		
	</table>	
	
	<!-- p81 -->
	
</body>
</html>

















