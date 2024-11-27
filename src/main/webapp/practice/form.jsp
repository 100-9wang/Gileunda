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
	<form action="output.jsp" method="post" encType="UTF-8" name="Member">
		아 이 디 :<input type = "text" name = "_id"> <br>
		비 밀 번 호 :<input type = "password" name = "_pw"> <br>
		이 름 : <input type = "text" name = "_name"> <br>
		전 화 번 호 : <input type="text" name = "_tel1" maxlength="4" size="4">-<input type="text" name = "_tel2" maxlength="4" size="4">-<input type="text" name = "_tel3" maxlength="4" size="4"> <br>
		성 별 : <input type="radio" name="sex" value="남성">남성
				<input type="radio" name="sex" value="여성">여성 <br>
	 	취 미 : <input type= "checkbox" name="hobby" value="농구">농구
	 			<input type= "checkbox" name="hobby" value="야구">야구
	 			<input type= "checkbox" name="hobby" value="축구">축구
	 			<input type= "checkbox" name="hobby" value="배구">배구
	 			<input type= "checkbox" name="hobby" value="탁구">탁구 <br>
	 	가 입 인 사 : <textarea name="introText" cols="20" rows="4"></textarea>
	 	<input type="submit" value="전송">
		<input type="reset" value="모두 지우기">
	</form>
	
</body>
</html>