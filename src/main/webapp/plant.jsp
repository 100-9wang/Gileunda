<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.Plant" %>
   	<%@ page import="dao.PlantDAO" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>식물 정보</title>
</head>
<body>
	<div class="container py-4">
	<%@ include file="menu.jsp" %>
	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
	<div class="container-fluid py-5">
	<h1 class="display-5 fw-bold">식물 정보</h1>
	<p class="col-md-8 fs-4">Plant Info</p>
	</div>
	</div>
	<%
		String id = request.getParameter("id");
		PlantDAO dao = PlantDAO.getInstance();
		Plant plant = dao.getPlantById(id);
	%>
	
		<div class = "row align-items-md-stretch">
			<div class = "col-md-12">
			<h3><b><%= plant.getPtName() %></b></h3>
			<p> <%= plant.getPtInfo() %>
			<p><b>식물 코드</b> : <span class = "badge text-bg-danger">
			<%= plant.getPtID() %></span>
			<p><b>카테고리</b> : <%= plant.getPtCategory() %>
			<p><b>길이</b> : <%= plant.getPtHeight() %>
			<p><b>가드닝 난이도</b> : <%= plant.getPtdifficulty() %>
			<p><b>재고 수량</b> : <%= plant.getPtUnit() %>
			<p><b style="color: red;"><%= plant.getPtPrice() %>원</b>
			<p><a href="#" class="btn btn-info">도서주문 &raquo;</a>
			<a href="./plants.jsp" class="btn btn-secondary">식물 목록 &raquo;</a> 
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>