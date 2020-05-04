<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {border-collapse: collapse;}
td {border: 1px solid black; width: 140px; padding: 5px;}
div { margin-bottom :10px;}
button { width : 70px; padding: 5px;}
input { padding: 5px;}
</style>
</head>
<body>
<% 
String s1 = request.getParameter("number");
if(s1 == null) s1 = "one";
String one_checked = "one".equals(s1) ? "checked" : "";
String two_checked = "two".equals(s1) ? "checked" : "";
String three_checked = "three".equals(s1) ? "checked" : "";

%>
<form>
<div>
<label><input type="radio" name="number" value="one" <%= one_checked%>>one</label>
<label><input type="radio" name="number" value="two" <%= two_checked%>>two</label>
<label><input type="radio" name="number" value="three" <%= three_checked%>>three</label>
</div>
<div>
<input type="text" value=<%=s1 %>>
</div>
<div>
<button type="submit">Ok</button>
</div>
</form>

</body>
</html>