<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
	
		<%
	String s1 = request.getParameter("number");
	int number = (s1 == null) ? 0 : Integer.parseInt(s1)+1;
	
	%>

		<input type="text" name="number" value=<%=number%>>
		<button type="submit">++</button>

	</form>
</body>
</html>