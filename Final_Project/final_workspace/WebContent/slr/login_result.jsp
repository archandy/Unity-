<%@page import="bean.memberData"%>
<%@page import="bean.memberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<jsp:useBean id="bb" class="bean.memberBean" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="bb"/>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	
	memberBean mb = new memberBean();
	memberData data = mb.view3(id);
	
	boolean flag=true;
	
	flag = bb.view(id,password);
	
	if(flag){
		session.setAttribute("id", id);
		session.setAttribute("password", password);
		session.setAttribute("nick", data.getNick());
	/* 	session.setAttribute("now_level", data.getNow_level());
		session.setAttribute("point", data.getPoint()); */
		System.out.println(data.getId());
	}else
	{
	
		session.setAttribute("id",  "d");
	
	}
		
%>

 <jsp:forward page="mainSlr.jsp"></jsp:forward>
</body>
</html>