<%-- <%@page import="com.sun.xml.internal.ws.api.ha.StickyFeature"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='css/community_main.css' type='text/css'>
<link rel='stylesheet' href='../community_menu_jsp/css/side_community1.css' type='text/css'>
<link rel='stylesheet' href='../community_main_top_free_jsp/css/top_community_c1.css' type='text/css'>
<link rel='stylesheet' href='css/community_content.css' type='text/css'>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String sideMenu = "../community_menu_jsp/info_side_community1.jsp";
	String TopTab = "../community_main_top_free_jsp/info_top_community_free_c1.jsp";
	String Content = "community_free_content.jsp";
%>
   <div class='main'>
        
		<div id='info_main_side'>   
		    <jsp:include page="<%=sideMenu%>"/>
		</div>
		<div id='info_main_right'>
		    <div id='tabManue'>
		     <jsp:include page="<%=TopTab%>"/>
		    </div>
		    <div id='contentsRight'>
		     <jsp:include page="<%=Content %>"/>
		    </div>
		</div>
		
    </div> 
   
</body>
</html>