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
button { width : 50px;}
</style>
</head>
<body>
<form>
<%
String s1 = request.getParameter("number");
int number = (s1 == null) ? 0 : Integer.parseInt(s1);
%>
<div>
<input type="text" name="number" value= <%= number %>>

<button type="submit">단</button>
</div>
</form>
<table>

<% for(int i= 1; i<10; i++){
%>
<tr>
<td>
<% out.print(number+" x " + i +"= " + number*i); 
%>
</td>
</tr>
<%} %>

</table>

</body>
</html>