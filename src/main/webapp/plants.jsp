<%@page import="dao.Plant"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="dao.PlantDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
		PlantDAO dao = PlantDAO.getInstance();
		ArrayList<Plant> listOfPlants = dao.getAllPlants();
	%>
	<div class="row align-items-md-stretch text-center">
	<%
		for (int i = 0; i < listOfPlants.size(); i++) {
			Plant plant = listOfPlants.get(i);
	%>
	<div class="col-md-4">
	<div class="h-100 p-2">
	<h5><b><%= plant.getPtName() %></b></h5>
	<p> <%= plant.getPtCategory() %><br>
	<p><%= plant.getPtHeight() %><br>
	<p><%= plant.getPtUnit() %> 개 <br>
	<p><%= plant.getPtdifficulty() %><br>
	<p><%=
           plant.getPtInfo().substring(0, 60) 
        %>...
	<p><%= plant.getPtPrice() %>원
	<p><a href = "./plant.jsp?id=<%= plant.getPtID() %>"
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