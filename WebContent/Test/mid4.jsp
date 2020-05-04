<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String name = "";
String sex = null;
String 에러메시지 = null;
request.setCharacterEncoding("UTF-8");
if (request.getMethod().equals("POST")) {
	name = request.getParameter("name");
	sex = request.getParameter("sex");
	
if(name == ""){
	에러메시지 = "회원등록 실패:이름을 입력하세요.";
} else if (sex == null){
	에러메시지 ="회원등록 실패: 성별을 입력하세요.";
}
}

%>
    

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
div.error {margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa;}
</style>
</head>
<body>

<form method="post">
<h1>회원등록</h1>
<label>이름</label>
<div>
<input type ="text" name="name" value = <%=name %>>
</div>
<label>성별</label>
<div>
<label><input type ="radio" name="sex" value="남자">남자</label>
</div>
<div>
<label><input type ="radio" name="sex" value="여자">여자</label>
</div>
<button type="submit">회원 등록</button>
</form>
<% if (에러메시지 != null) { %>
		<div class="error">
			회원가입 실패:<%=에러메시지%>
			</div>
			<% } %>
			
<table>
<tr>
<td>이름</td>
<td><%= name %></td>
</tr>
<tr>
<td>성별</td>
<td><%= sex %></td>
</tr>
</table>

</body>
</html>