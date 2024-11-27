<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="container py-4">
	<%@ include file="menu.jsp" %>
	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
	<div class="container-fluid py-5">
	<h1 class="display-5 fw-bold">식물 등록</h1>
	<p class="col-md-8 fs-4">Plant Addition</p>
	</div>
	</div>
	
	<form name="addPlant" action="addPlant_fn.jsp" method="post">
	<div class="row align-items-md-stretch">
	<div class="mb-3 row">
		<label class="col-sm-2">식물 코드</label>
		<div class="col-sm-3">
		<input class="fm-ctl" type= "text" name="ptID" autofocus>
		</div>
	</div>
	
	<div class="mb-3 row">
		<label class="col-sm-2">식물 이름</label>
		<div class="col-sm-3">
		<input class="fm-ctl" type="text" name="ptName"> 
		</div>
	</div>	
	
	<div class="mb-3 row">
		<label class="col-sm-2">카테고리</label>
		<div class="col-sm-3">
		<input class="fm-ctl" type= "text" name="ptCategory">
		</div>
	</div>
	
	<div class="mb-3 row">
		<label class="col-sm-2">길이</label>
		<div class="col-sm-3">
		<input class="fm-ctl" type="text" name="ptHeight"> 
		</div>
	</div>
	
	<div class="mb-3 row">
		<label class="col-sm-2">가드닝 난이도</label>
		<div class="col-sm-3">
		<input class="fm-ctl" type= "text" name="ptdifficulty">
		</div>
	</div>
	
	<div class="mb-3 row">
		<label class="col-sm-2">재고 수량</label>
		<div class="col-sm-3">
		<input class="fm-ctl" type="text" name="ptUnit"> 
		</div>
	</div>			
	
	<div class="mb-3 row">
		<label class="col-sm-2">가 격</label>
		<div class="col-sm-3">
		<input class="fm-ctl" type= "text" name="ptPrice">
		</div>
	</div>
	
	<div class="mb-3 row">
		<label class="col-sm-2">상세 설명</label>
		<div class="col-sm-4">
		<textarea name="ptInfo" rows="3" cols="50" class="fm-ctl" placeholder="100자 이상 적어주세요">
		</textarea>
		</div>
	</div>	
	
	<div class="mb-3 row">
	<div class="col-sm-offset-2 col-sm-10">
		<input class="btn btn-primary" type="submit" value="등록하기">
	</div>
	</div>
	</div>
	</form>
	<jsp:include page="footer.jsp" />
	</div>
	</body>
	</html>