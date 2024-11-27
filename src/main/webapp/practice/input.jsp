<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>mission</title>
</head>
<body>
	<form action="output02.jsp" method="post" encType="UTF-8" name="Member">
		아 이 디 :<input type = "text" name = "id"> <br>
		비 밀 번 호 :<input type = "password" name = "pw"> <br>
		이 름 : <input type = "text" name = "name"> <br>
		전 화 번 호 : <input type="text" name = "tel1" maxlength="4" size="4">-<input type="text" name = "tel2" maxlength="4" size="4">-<input type="text" name = "tel3" maxlength="4" size="4"> <br>
		이 메 일 : <input type="text" name="email">
	 	<input type="submit" value="전송">
		<input type="reset" value="모두 지우기">
	</form>
	
</body>
</html>