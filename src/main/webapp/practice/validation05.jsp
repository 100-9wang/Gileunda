<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkMember() {
		
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		var regExpPasswd = /^[0-9]*$/;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var form = document.Member;
		
		var id = form.id.value;
		var name = form.name.value;
		var pw = form.pw.value;
		var tel = form.tel1.value + "-" + form.tel2.value + "-" + form.tel3.value;
		var email = form.email.value;
		
		if (!r egExpId.test(id)) {
			alert("아이디는 문자로 시작해주세요 !");
			form.id.select();
			return;
		}
		
		if (!regExpId.test(name)) {
			alert("이름은 한글만 입력해주세요 !");
			form.id.select();
			return;
		}
		
		if (!regExpId.test(pw)) {
			alert("비밀번호는 숫자만 입력해주세요 !");
			form.id.select();
			return;
		}
		
		if (!regExpId.test(tel)) {
			alert("연락처 입력을 확인해주세요 !");
			form.id.select();
			return;
		}
		
		if (!regExpId.test(email)) {
			alert("이메일 형식을 확인해주세요 !");
			form.id.select();
			return;
		}
		
		form.submit();
		
	}
</script>
<body>
<form action="output02.jsp" method="post" encType="UTF-8" name="Member">
		아 이 디 :<input type = "text" name = "id"> <br>
		비 밀 번 호 :<input type = "password" name = "pw"> <br>
		이 름 : <input type = "text" name = "name"> <br>
		전 화 번 호 : <input type="text" name = "tel1" maxlength="4" size="4">-<input type="text" name = "tel2" maxlength="4" size="4">-<input type="text" name = "tel3" maxlength="4" size="4"> <br>
		이 메 일 : <input type="text" name="email">
	 	<input type="submit" value="전송" onclick="checkMember()">
	</form>
</body>
</html>