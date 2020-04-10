<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table { border-collapse: collapse; }
	td {border : 1px solid black;}
</style>
</head>
<body>

	<table>
	<%
	for(int i = 1; i<10; i++){
		%>
		<tr>
		<%
		for(int j = 2; j<10; j++){
			%>
			<td>
			<%
			out.print(j + "x" + i + "=" + i*j );
			%>
			</td>
			<%
		}
		%>
		</tr>
		<%
	}
	
	
	
	%>
	
	
	
	
	
	</table>


</body>
</html>