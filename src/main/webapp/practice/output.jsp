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
String hobbys[] = request.getParameterValues("hobby");
%>
</head>
<body>
<table border="1">
<tr>
	<td>요청 파라미터 이름</td> 
	<td>요청 파라미터 값 </td>
</tr>
<tr>	
	<td>ID</td><td><%= request.getParameter("_id") %></td> 
</tr>	
<tr>
	<td>PW</td><td><%= request.getParameter("_pw") %></td>
</tr>
<tr>
	<td>Name</td><td><%= request.getParameter("_name") %></td>
</tr>
<tr>	
	<td>Tel</td><td><%= request.getParameter("_tel1") %>-<%= request.getParameter("_tel2") %>-<%= request.getParameter("_tel3") %></td></tr>
<tr>	
	<td>Sex</td><td><%= request.getParameter("sex") %></td>
</tr>
<tr>	
	<td>Hobby</td><td><% 
        if (hobbys != null) {
            for (int i = 0; i < hobbys.length; i++) {
                out.print(hobbys[i]);
                if (i < hobbys.length - 1) {
                    out.print(", ");
                }
            }
        } 
%></td>
</tr>
<tr>	
	<td>IntroText</td><td><%= request.getParameter("introText") %></td>
</tr>
</table>
</body>
</html>