<%@page import="dao.Plant"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="PlantDAO" class="dao.PlantDAO" scope="session"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>식물 목록</title>
</head>
<body>
	<div class="container py-4">
	<%@ include file="menu.jsp" %>
	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
	<div class="container-fluid py-5">
	<h1 class="display-5 fw-bold">식물 목록</h1>
	<p class="col-md-8 fs-4">PlantList</p>
	</div>
	</div>
	<%
		ArrayList<Plant> listOfPlants = PlantDAO.getAllPlants();
	%>
	<div class="row align-items-md-stretch text-center">
	<%
		for (int i = 0; i < listOfPlants.size(); i++) {
			Plant plant1 = listOfPlants.get(i);
	%>
	<div class="col-md-4">
	<div class="h-100 p-2">
	<h5><b><%= plant1.getPtName() %></b></h5>
	<p> <%= plant1.getPtCategory() %><br>
	<p><%= plant1.getPtHeight() %><br>
	<p><%= plant1.getPtUnit() %> 개 <br>
	<p><%= plant1.getPtdifficulty() %><br>
	<p><%= plant1.getPtInfo().substring(0, 60) %>...
	<p><%= plant1.getPtPrice() %>원
	<p><a href = "./plant.jsp?id=<%= plant1.getPtID() %>"
	class="btn btn-secondary" role="button">상세정보</a>
	</div>
	</div>
	<%
		}
	%>
	</div>
	<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>