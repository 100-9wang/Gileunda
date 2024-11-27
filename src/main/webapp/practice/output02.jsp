<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
<style>
*{
text-align: center;
}
</style>
<%
request.setCharacterEncoding("utf-8");
%>
</head>
<body>

	<p>아 이 디 : <%= request.getParameter("id") %> 

	<p>비 밀 번 호 : <%= request.getParameter("pw") %>

	<p>이 름 : <%= request.getParameter("name") %>

	<p>전 화 번 호<%= request.getParameter("tel1") %>-<%= request.getParameter("tel2") %>-<%= request.getParameter("tel3") %>

	<p>이 메 일<%= request.getParameter("email") %>

</body>
</html>