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
select { padding: 5px;}
</style>
</head>
<body>
<% 
String s1 = request.getParameter("number");
if(s1 == null) s1 = "one";
String one_checked = "one".equals(s1) ? "checked" : "";
String two_checked = "two".equals(s1) ? "checked" : "";
String three_checked = "three".equals(s1) ? "checked" : "";
String one_selected = "one".equals(s1) ? "selected" : "";
String two_selected = "two".equals(s1) ? "selected" : "";
String three_selected = "three".equals(s1) ? "selected" : "";

%>
<form>
<div>
<label><input type="radio" name="number" value="one" <%= one_checked%>>one</label>
<label><input type="radio" name="number" value="two" <%= two_checked%>>two</label>
<label><input type="radio" name="number" value="three" <%= three_checked%>>three</label>
</div>
<div>
<select>
<option value="one" <%= one_selected%>>one</option>
<option value="two" <%= two_selected%> >two</option>
<option value="three" <%= three_selected%>>three</option>
</select>
</div>
<div>
<button type="submit">Ok</button>
</div>
</form>

</body>
</html>