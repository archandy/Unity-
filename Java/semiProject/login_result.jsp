<%@page import="semiBean.AuctionBean"%>
<%@page import="semiBean.MemberData"%>
<%@page import="semiBean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bb" class="semiBean.MemberBean" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="bb"/>
<jsp:useBean id='ad' class='semiBean.AuctionData' scope='page' />
<jsp:setProperty property="*" name='ad' />
<% 

	AuctionBean sb = new AuctionBean();
	ad = sb.view();
	
String m_id = request.getParameter("m_id");
String m_pwd = request.getParameter("m_pwd");


MemberBean mb = new MemberBean();
MemberData data = mb.view2(m_id);

	boolean flag=true;
	
	flag =bb.view(m_id, m_pwd);
	
	if(flag){
		session.setAttribute("m_id", m_id);
		session.setAttribute("m_pwd", m_pwd);
		session.setAttribute("m_nick", data.getM_nick());
		session.setAttribute("itemname", ad.getItemName());
		session.setAttribute("m_price", data.getM_price());
		
	}else{
		session.setAttribute("m_id", "d" );
	}


	
%>
 <jsp:forward page="semi2joMain.jsp"></jsp:forward> 
</body>
</html>