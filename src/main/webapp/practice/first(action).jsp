<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 파일은 first.jsp 파일 입니다.</h3>
	<jsp:include page="second.jsp">
		<jsp:param value="<%= new java.util.Date() %>" name="date" />
	</jsp:include>
	<p>Javax Server Page</p>
</body>
</html>