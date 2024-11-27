<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dao.PlantDAO" %>
<%@ page import="dao.Plant" %>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String ptID = request.getParameter("ptID");
	String ptName = request.getParameter("ptName");
	String ptPrice = request.getParameter("ptPrice");
	String ptInfo = request.getParameter("ptInfo");
	String ptHeight = request.getParameter("ptHeight");
	String ptCategory = request.getParameter("ptCategory");
	String ptUnit = request.getParameter("ptUnit");
	String ptdifficulty = request.getParameter("ptdifficulty");

	Integer price;
	
	if(ptPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(ptPrice);
	
	
	long UnitCnt;
	
	if(ptUnit.isEmpty())
		UnitCnt = 0;
	 else 
		UnitCnt = Long.valueOf(ptUnit);

	PlantDAO dao = PlantDAO.getInstance();
	
	Plant addPlant = new Plant();

	addPlant.setPtID(ptID);
	addPlant.setPtName(ptName);
	addPlant.setPtPrice(price);
	addPlant.setPtInfo(ptInfo);
	addPlant.setPtHeight(ptHeight);
	addPlant.setPtCategory(ptCategory);
	addPlant.setPtUnit(UnitCnt);
	addPlant.setPtdifficulty(ptdifficulty);
	
	dao.addPlant(addPlant);
	
	response.sendRedirect("plants.jsp");
	
%>