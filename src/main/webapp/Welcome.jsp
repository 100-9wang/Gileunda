<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>    
<%@ page import="java.util.Date"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Welcome</title>
<script src = "shop.js"></script>
</head>
<body>
<div class = "container py-4">
	<%@ include file="menu.jsp" %>
<%! String greeting = "나무 쇼핑몰에 오신 것을 환영합니다.";
String tagline = "Welcome to Web Market!"; %>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
<div class="container-fluid py-5">
	<h1 class="display-5 fw-bold"><%= greeting %></h1>
	<p class="col-md-8 fs-4">Tree Market</p>
	</div>
</div>

<div class="row align-items-md-stretch  text-center">
<div class="col-md-12">
<div class="h1-100 p-5">
<h3><%= tagline %></h3>
<div id="timeContainer"><%@ include file="time.jsp" %></div>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>