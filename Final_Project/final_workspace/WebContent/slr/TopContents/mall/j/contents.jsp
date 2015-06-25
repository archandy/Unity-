<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#mall_contents{
	width:860px;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String menu = "tabMenu.jsp";
	String itemlist = "itemlist.jsp";
	if(request.getParameter("itemlist")!=null){
		itemlist = request.getParameter("itemlist");
	}
%>
	<div id='mall_contents'>
		<div id='tabmenu'>
<%-- 			<%@include file="tabMenu_all.jsp" %> --%>
		</div>
		<div id='content'>
			<jsp:include page="<%=itemlist %>"></jsp:include>
		</div>
	</div>

</body>
</html>