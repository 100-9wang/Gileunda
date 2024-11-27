<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Date day = new java.util.Date();
	String am_pm;
	int hour = day.getHours();
	int min = day.getMinutes();
	int sec = day.getSeconds();
	
	if (hour / 12 == 0) {
		am_pm = "AM";
	} else {
		am_pm = "PM";
		hour = hour - 12;
	}
	String CT = hour+ " : " + min + " : " + sec + " " + am_pm;
	out.println("현재 접속 시각 : " + CT + "\n");
%>