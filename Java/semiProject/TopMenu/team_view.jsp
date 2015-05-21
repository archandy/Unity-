<%@page import="semiBean.TeamData"%>
<%@page import="semiBean.TeamBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='css/team_view.css'> 
<script src='js/Team.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="t" class="semiBean.TeamData" scope='page'/>
<jsp:setProperty property="*" name="t"/>
<%
request.setCharacterEncoding("UTF-8");
TeamBean tb = new TeamBean();
TeamData tdata = tb.view(t.getRno());
%>
<div id='mainCenterRealTicket'>
<div class='tview_wrap'>
	<!------------------------------	선수 사진과 이름  		-------------------------------->
	<div class='tview_img'>
		<img src="imgs/player/pic/large/<%=tdata.getProfile_pic() %>" width='694px' height='450px'>
	</div>
	<div class='tview_name'>
		<h1><%=tdata.getFirst_name() %>&nbsp;&nbsp;&nbsp;&nbsp;<%=tdata.getLast_name() %></h1>
	</div>
	
	
	<!------------------------------------ 그래프영역 ------------------------------------->
	<div id="chart12"></div>
	<script>
		var options = {
			'legend':{
				names: ['Stamina', 'Shooting', 'Passing', 'Dribbling', 'Speed', 'Heading'],
				hrefs: []
					},
			'dataset': {
				title: 'Overall Statistical Data',
				values: [[<%=tdata.getSpeed()%>, 
						<%=tdata.getStamina()%>, 
						<%=tdata.getPassing()%>, 
						<%=tdata.getShooting()%>, 
						<%=tdata.getDribbling()%>, 
						<%=tdata.getHeading()%>]], 
				bgColor: '#f9f9f9',
				fgColor: '#cc79a7'
			},
			'chartDiv': 'chart12',
			'chartType': 'radar',
			'chartSize': {width:600, height:300}
		};

		Nwagon.chart(options);
	</script>
	
	
	
	<!------------------------------------- 선수이력 -------------------------------------->
	<div class='desc1'>
		<%=tdata.getDescription1() %>
	</div>
	<div class='desc2'>
		<%=tdata.getDescription2() %>
	</div>
	
	
	<!-------------------------------------선수기본정보-------------------------------------->
	<div class='tview_info'>
		<ul>
			<li class='tview_info1'>Born: <%=tdata.getNationality() %></li>
			<li class='tview_info2'>Position: <%=tdata.getPosition() %></li>
			<li class='tview_info3'>Squad Number: <%=tdata.getSquad() %></li>
			<li class='tview_info4'>Previous Club(s): <%=tdata.getPrev_club() %></li>
			<li class='tview_info5'>Arsenal Debut: <%=tdata.getDdate() %></li>
		</ul>
	</div>
	<!------------------------------------------------------------------------------------->
</div>	
</div>
<script>view();</script>
</body>
</html>