<%@page import="semiBean.MemberData"%>
<%@page import="semiBean.MemberBean"%>
<%@page import="semiBean.AuctionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function init(){
	window.opener.location.reload();
	window.close();
}

</script>
</head>
<body>
	<jsp:useBean id="bean" class="semiBean.MemberData" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="bean" />
	<%
		try {
			String m_id = "";
			m_id = (String) session.getAttribute("m_id");

			MemberBean mb = new MemberBean();
			MemberData data = mb.view2(m_id);

			int m_price = Integer.parseInt(request.getParameter("m_price"));
			int r2 = mb.bid2(m_price, m_id);
			if (r2 > 0) { %>
				<script>init()</script>	
			<%
			}
				
			else{%>
			<script>init()</script>	
		<%
			}
	%>
	<jsp:useBean id='ad' class='semiBean.AuctionData' scope='page' />
	<jsp:setProperty property="*" name='ad' />

	<%
		AuctionBean ab = new AuctionBean();
		ad = ab.view();
		
		if(m_price>ad.getPrice()){

			int r = ab.bid(m_price, m_id);
			if (r > 0){%>
			<script>init()</script>	
		<%}
			else{%>
			<script>init()</script>
		<%
			}
		}else{
			out.println("최고입찰이 아닙니다.");	
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>