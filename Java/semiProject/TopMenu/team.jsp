<%@page import="oracle.net.aso.s"%>
<%@page import="semiBean.TeamData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='./team_view.css'>
<script src='js/Team.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>team.jsp</title>
</head>
<body>
	<div id='mainCenter'>
		<div id='mainCenterTicketTop'>
			<div id='mainCenterTopNewsPic'>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img
					src="imgs/player/pic/teamb.png" width="490px">
			</div>
			<div id='mainCenterTopNewsTxt'>
				<font style="font-size: 30px; font-weight: bold;">
					</p>선수 명단
				</font>
				<!-- 				<hr> -->
				<font size='2'></font>
				<p />
				<div class='dash'></div>

			</div>

		</div>
		<div id='mainCenterRealTicket'>
			<jsp:useBean id="td" class="semiBean.TeamBean" scope="page"></jsp:useBean>
			<jsp:setProperty property="*" name="td" />

			<div class='team_wrap'>


				<h3>스탭</h3>
				<%
					ArrayList<TeamData> staf = td.sList();
				System.out.println("df");
					for(TeamData a : staf)
					{
				%>
				

				<div class='goalKeeper'>
					<div class='g_player'>
						<img alt="prof" src="imgs/player/pic/<%=a.getProfile_pic()%>"
							width="150px"> <a href='#' id='pname'
							onclick="goView('<%=a.getRno()%>')"> <%=a.getFirst_name()%>&nbsp;&nbsp;<%=a.getLast_name()%>
						</a><br />
					</div>
				</div>
				<%
					}
					////////////////////////	   Defenders		///////////////////////////////////////////////
				%><p>
				<h3>골키퍼</h3>
				<%
					ArrayList<TeamData> gal = td.gList();
					for(TeamData s : gal)
					{
						////////////////////////	   GoalKeepers		////////////////////////////////////////////////
				%>

				<div class='goalKeeper'>
					<div class='g_player'>
						<img alt="prof" src="imgs/player/pic/<%=s.getProfile_pic()%>"
							width="150px"> <a href='#' id='pname'
							onclick="goView('<%=s.getRno()%>')"> <%=s.getFirst_name()%>&nbsp;&nbsp;<%=s.getLast_name()%>
						</a><br />
					</div>
				</div>
				<%
					}
					////////////////////////	   Defenders		///////////////////////////////////////////////
				%><p>
				<h3>수비수</h3>
				<%
					ArrayList<TeamData> dal = td.dList();
					for(TeamData s : dal)
					{
				%>
				<div class='defender'>

					<div class='d_player'>
						<img alt="prof" src="imgs/player/pic/<%=s.getProfile_pic()%>"
							width="150px"> <a href='#' id='pname'
							onclick="goView('<%=s.getRno()%>')"> <%=s.getFirst_name()%>&nbsp;&nbsp;<%=s.getLast_name()%>
						</a><br />

					</div>
				</div>

				<%
					}
					////////////////////////	   Midfielders		///////////////////////////////////////////////
				%><p>
				<h3>미드필더</h3>
				<%
					ArrayList<TeamData> mal = td.mList();
					for(TeamData s : mal)
					{
				%>
				<div class='midfielder'>
					<div class='m_player'>
						<img alt="prof" src="imgs/player/pic/<%=s.getProfile_pic()%>"
							width="150px"> <a class='ma' href='#' id='pname'
							onclick="goView('<%=s.getRno()%>')"> <%=s.getFirst_name()%>&nbsp;&nbsp;<%=s.getLast_name()%>
						</a><br />
					</div>
				</div>
				<%
					}
					////////////////////////	     Forward			//////////////////////////////////////////
				%><p>
				<h3>공격수</h3>
				<%
					ArrayList<TeamData> fal = td.fList();
					for(TeamData s : fal)
					{
				%>
				<div class='forward'>
					<div class='f_player'>
						<img alt="prof" src="imgs/player/pic/<%=s.getProfile_pic()%>"
							width="150px"> <a href='#' id='pname'
							onclick="goView('<%=s.getRno()%>')"> <%=s.getFirst_name()%>&nbsp;&nbsp;<%=s.getLast_name()%>
						</a><br />
					</div>
				</div>
				<%
					}
				%>
			</div>

		</div>
	</div>
</body>
</html>