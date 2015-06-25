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
	String m_id = request.getParameter("m_id");
	String m_pw = request.getParameter("m_pw");
	String m_nick = request.getParameter("m_nick");
	
	memberBean mb = new memberBean();
	memberData data = mb.view2(m_id);
	
	boolean flag=true;
	
	flag = bb.view(m_id,m_pw);
	
	if(flag){
		session.setAttribute("m_id", m_id);
		session.setAttribute("m_pw", m_pw);
		session.setAttribute("m_nick", data.getM_nick());
	}else
	{
		session.setAttribute("m_id",  "d");
		
	}
		
%>

 <jsp:forward page="../mainSlr.jsp"></jsp:forward> 
</body>
</html>