<%@page import="oracle.net.aso.d"%>
<%@page import="semiBean.SemiTicktingData"%>
<%@page import="semiBean.SemiTicktingBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function payment(){
		window.open("TopMenu/payment.jsp", "win6",
		"width=600,height=450");
	}
</script>
</head>
<body>
<div id='mainCenter'>
		<div id='mainCenterTicketTop'>
			<div id='mainCenterTopNewsPic'>
				<img src="imgs/ticket/fa1c0830_o.png" width="550px">
			</div>
			<div id='mainCenterTopNewsTxt' >
				<font style="font-size: 30px; font-weight: bold;">
					</p>티켓 구매
				</font>
				<hr>
				<font size='2'>아스널 맴버로 가입하고 선티켓구매, 아스널선수 정보 구독, 환영 패키지, 1군 선수들과 하는 다양한 이벤트 등의 혜택을 누리세요.
만약 쥬니어거너로 가입을 한다면 게임당일 마스코트, 볼보이가
될 수 있는 기회를 얻을 수 있습니다!

				</font>
				<p />
				<div class='dash'></div>

			</div>
		</div>
		<jsp:useBean id="std" class="semiBean.SemiTicktingData" scope='page' />
		<jsp:setProperty property="*" name="std" />
		<%
			String tn = request.getParameter("tn");
			System.out.println("팀: "+tn);
			SemiTicktingBean bb = new SemiTicktingBean();
			SemiTicktingData data = bb.payview(tn);
		%>
		<div id='mainCenterRealTicket'>
			<div id='mainCenterSchedule'>경기 일정</div>
			<p />
			<div id='ticketingDiv'>
				<div id='ticketingOne'>
					<div class='ticketingThumb'>
						<img src="imgs/ticket/<%=data.getTeamthumb()%>" height="150px">
						<p />
						<div class='ticketingRightContentTn'><%=data.getTeamname()%></div>
					</div>
					<div class='ticketingRight'>
						<div class='ticketingRightContent'><%=data.getVdate()%></div>
						<div class='ticketingRightContent'><%=data.getLeague()%></div>
						<div class='ticketingRightContent'>
							좌석

							<%=data.getStock()%>
							/ 5000
							
						</div>

					</div>
						
					<img class='buynow' src='imgs/ticket/buynow.png' height='45px' onclick="payment()">
				</div>
			</div>
		</div>
			
			　
</div>

</body>
</html>