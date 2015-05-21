
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
<style>
#auction_btn_main {
	width: 300px;
	height: 120px;
	margin:auto;
	margin-top:20px;
}

#auction_btn_name {
	font-size: 20px;
	font-family: 휴먼체;
	font-weight: bold;
	color: #ff0000;
	margin-bottom: 20px;
}

#auction_btnOK, #auction_btnNO {
	padding: 5px;
	text-align: center;
	font-size: 20px;
	color: #ffffff;
	font-family: 휴먼체;
	font-weight: bold;
	height: 30px;
	width: 100px;
	font-family: 휴먼체;
	cursor:pointer;
}

#auction_btnOK {
	border-bottom: 2px solid #577748;
	background-color: #8DBA79;
	float: left;
}

#auction_btnNO {
	border-bottom: 2px solid #FF0000;
	background-color: #FF5A5A;
	float: right;
}
#auction_number{
	width:295px;
	height:30px;
	font-size: 25px;
}

a {
	text-decoration: none;
	color: #ffffff;
}
</style>
<script>
	function bid(){
		document.getElementById('auction_btnOK').onclick = function() {
			auction_frm.action='btn_window_result.jsp'
			auction_frm.submit();

		}
	}
</script>
</head>
<body>

	<%
	String m_id="";
	m_id = (String)session.getAttribute("m_id");
	
	
	MemberBean mb = new MemberBean();
	MemberData data = mb.view2(m_id);
	
	%>
<jsp:useBean id='ad' class='semiBean.AuctionData' scope='page' />
	<jsp:setProperty property="*" name='ad' />
	<%
		AuctionBean sb = new AuctionBean();
		ad = sb.view();
	%>
	<div id='auction_btn_main'>
		<div id='auction_btn_name'>
			<label><%=ad.getItemName()%></label>
		</div>
		<form name='auction_frm' method='post' >
			<input type='number' id = 'auction_number' name='m_price' placeholder='입찰가격' step='1000' 
				min='0' max='999999999'><br />
		
			<p />
			<div>
				<div id='auction_btnOK'
					onmouseover="this.style.background='#577748'"
					onmouseout="this.style.background='#8DBA79'">입찰</div>
			</div>
			<div>
				<div id='auction_btnNO' onclick="window.close()"
					onmouseover="this.style.background='#FF0000'"
					onmouseout="this.style.background='#FF5A5A'">취소</div>
</div>	
	
		</form>
	</div>
<script>bid();</script>
</body>
</html>