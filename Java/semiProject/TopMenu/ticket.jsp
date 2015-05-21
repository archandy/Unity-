<%@page import="semiBean.SemiTicktingData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src='js/ticket.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id='mainCenter'>
		<div id='mainCenterTicketTop'>
			<div id='mainCenterTopNewsPic'>
				<img src="imgs/ticket/dollar_small.png" width="437px" height="275px">
			</div>
			<div id='mainCenterTopNewsTxt'>
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
		<div id='mainCenterRealTicket'>
			<%-- 		<jsp:include page="ticket_result.jsp"/>		    --%>
		<form name='frm' method='post'>
			<div id='mainCenterSchedule'>경기 일정</div>
			<p />
			<div id='ticketingDiv'>
				<jsp:useBean id="tb" class='semiBean.SemiTicktingBean' scope='page' />
				<jsp:setProperty property="*" name="tb" />
				<%
					ArrayList<SemiTicktingData> al = tb.ticktingList();
					for(SemiTicktingData d : al)
					{
				%>

				<div id='ticketingOne'>
					<div class='ticketingThumb'>
						<img src="imgs/ticket/<%=d.getTeamthumb()%>" height="150px">
						<p />
						<div class='ticketingRightContentTn'><%=d.getTeamname()%></div>
						<input type="hidden" name='tn' value='<%=d.getTeamname()%>'>
					</div>
					<div class='ticketingRight'>
						<div class='ticketingRightContent'><%=d.getVdate()%></div>
						<div class='ticketingRightContent'><%=d.getLeague()%></div>
						<div class='ticketingRightContent'>
							좌석

							<%=d.getStock()%>
							/ 5000
							
						</div>

					</div>
					<%
						if(d.getStock() == 0)
						{
					%>
					<img class='buynow' src='imgs/ticket/soldout.png' height='45px'>
					
					<%}else{ %>
					<a href="#" onclick="goView('<%=d.getTeamname()%>')">
					<img class='buynow' src='imgs/ticket/buynow.png' height='45px'>
					<%} %>
					</a>
				</div>

				<%
					}
				%>

			</div>
			
			</form>
			　
		</div>
	</div>
</body>
</html>