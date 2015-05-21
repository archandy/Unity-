
<%@page import="semiBean.MemberData"%>
<%@page import="semiBean.MemberBean"%>
<%@page import="semiBean.AuctionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경매</title>
-->
<script>
	function init() {
		document.getElementById("link_img2").onclick = function() {
			location.href = 'http://www.facebook.com';
		}
		document.getElementById("link_img3").onclick = function() {
			location.href = 'http://www.twitter.com';
		}
		document.getElementById("imgs_thumbnail1").onclick = function() {
			window.open("imgs/auction/adizero1.jpg", "win",
					"width=739,height=319");
		}
		document.getElementById("imgs_thumbnail2").onclick = function() {
			window.open("imgs/auction/adizero4.jpg", "win1",
					"width=363,height=574");
		}
		document.getElementById("imgs_thumbnail3").onclick = function() {
			window.open("imgs/auction/adizero5.jpg", "win2",
					"width=363,height=574");
		}
 		document.getElementById("auction_btn").onclick = function() {
			window.open("TopMenu/btn_window.jsp", "win4",
					"width=400,height=200");
		}
	}
	function payment(){
		window.open("TopMenu/payment.jsp", "win5",
					"width=600,height=450");
	}
	
</script>
<scRIPT type="text/javascript">

function reverse_counter(){
today = new Date();
d_day = new Date("may 8 2015 17:59:59");
days = (d_day - today) / 1000 / 60 / 60 / 24;
daysRound = Math.floor(days);
hours = (d_day - today) / 1000 / 60 / 60 - (24 * daysRound);
hoursRound = Math.floor(hours);
minutes = (d_day - today) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound);
minutesRound = Math.floor(minutes);
seconds = (d_day - today) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) -
(60 * minutesRound);
secondsRound = Math.round(seconds);
sec = " 초."
min = " 분, "
hr = " 시간, "
dy = " 일, "
document.counter.counter_box.value = " 경매 종료까지 남은시간 : " + daysRound + 
dy + hoursRound + hr + minutesRound + min + secondsRound + sec;
// 	document.counter.counter_box.value = " 경매 종료까지 남은시간 :  0 일, 0 시간, 0 분, 0 초.";

newtime = window.setTimeout("reverse_counter();", 1000);
}

</script>
</head>
<body onLoad="reverse_counter();">
	<jsp:useBean id='ad' class='semiBean.AuctionData' scope='page' />
	<jsp:setProperty property="*" name='ad' />
	<%
	
		AuctionBean sb = new AuctionBean();
		ad = sb.view();

		String m_id = "";
		m_id = (String) session.getAttribute("m_id");

		MemberBean mb = new MemberBean();
		MemberData data = mb.view2(m_id);
		
		int time = 1;
	%>


<!-- 	<div id='mainCenter'> -->
		<div id='mainCenterTicketTop'>
			<div id='mainCenterTopNewsPic'>
				<img src="imgs/auction/auctionmainpng.png" width="437px" height="275px">
			</div>
			<div id='mainCenterTopNewsTxt'>
				<font style="font-size: 30px; font-weight: bold;">
					</p>아스날 선수들의<br/> 애장품을<br/> 지금 만나보세요 
				</font>
				<font size='2'></font>
				<p />
				<div class='dash'></div>

			</div>

		</div>
		<div id='mainCenterRealAuction'>


			<div id='auction_main'>
				<div id='auction_imgs'>
					<div id='imgs_main'>
						<img src='imgs/auction/layers/adizero_00000.png' height='400px' width='500px'>
					</div>
					<div id='imgs_thumbnail1'>
						<img src='imgs/auction/layers/adizero1_00000.png' height='150px' width='250px'>
					</div>
					<div id='imgs_thumbnail2'>
						<img src='imgs/auction/layers/adizero4_00000.png' height='150px' width='100px'>
					</div>
					<div id='imgs_thumbnail3'>
						<img src='imgs/auction/layers/adizero5_00000.png' height='150px' width='100px'>
					</div>
				</div>
				<div id='auction_discription'>
					<div id='auction_dname'>
						<label><%=ad.getItemName()%></label>
					</div>
					</p>
					

					<div id='auction_price'>
						<label>현재가격 : ￦<%=ad.getPrice()%></label><br/>
						<font style="font-size: 12px; font-weight: bold; color:#8DBA79;">입찰 가능</font>
						</p>
					</div>
				<div id='auction_time'>
					<form name="counter">
						<label><input type="text" name="counter_box" size="55"></label>
					</form>

				</div>
				<div id='auction_dnamebox'
						onmouseover="this.style.background='#DDDDDD', this.style.color='#000000'"
						onmouseout="this.style.background='#ff0000', this.style.color='#000000'">
						<label>제품정보</label>
					</div>
					<!-- 			<div id='auction_dnamebox2'onmouseover="this.style.background='#1D273A'"  -->
					<!-- 										onmouseout="this.style.background='#ff0000'">제품설명 -->
					<!-- 			</div> -->
					<div id='auction_d'>
						
						<%=ad.getContent()%>
					</div>
					
					<%
						if (m_id != null && time >0) {
					%>
						<div id='auction_btn' onmouseover="this.style.background='#577748'"
							onmouseout="this.style.background='#8DBA79'">입찰</div>
					<%
						}else if(ad.getBuyer().equals(m_id) && time <0){
					%>
						<div id='auction_btn2' onclick="payment()" onmouseover="this.style.background='#577748'"
							onmouseout="this.style.background='#8DBA79'">결제</div>
					<% 
						}else if(m_id != null &&!(ad.getBuyer().equals(m_id)) && time <0){
					%>
						<div id='auction_btn3'>경매종료</div>
					<%}
					
					%>
					<div id='auction_link'>
						<div id='link_img1'>
							<img src='imgs/auction/sh.png'> <label>share</label>
						</div>
						<div id='link_img2'>
							<img src='imgs/auction/facebook.png'>
						</div>
						<div id='link_img3'>
							<img src='imgs/auction/twit.png'>
						</div>
					</div>
				</div>

			</div>
		</div>
<!-- 	</div> -->
	<script>
		init()
	</script>
</body>
</html>