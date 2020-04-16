<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div { margin-bottom : 10px;}

</style>
</head>
<body>

<%
String cmd = request.getParameter("cmd");
String number = (cmd == null) ? "one" : cmd;
%>

<form>
<div>
<select name = "cmd">
<option value="one" <%= "one".equals(cmd) ? "selected" : "" %>>one</option>
<option value="two" <%= "two".equals(cmd) ? "selected" : "" %>>two</option>
<option value="three" <%= "three".equals(cmd) ? "selected" : "" %>>three</option>
</select>
</div>
<div>
<input type = "text" value="<%= number %>">
</div>
<div>
<button type ="submit">Ok</button>
</div>



</form>

</body>
</html>