<%@page import="semiBean.VoteData"%>
<%@page import="semiBean.VoteBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='css/team_view.css'>
<script src='js/semiPoll.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Poll_result</title>
</head>
<body>

<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>

		<div id='listBoard'>
<h3>투표 결과</h3>
<jsp:useBean id="v" class="semiBean.VoteData" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="v"/>
<%
request.setCharacterEncoding("utf-8");
session.setAttribute("m_id", "m_id");
VoteBean vb = new VoteBean();
VoteData data = vb.event(1);
// VoteData data2 = vb.event(2);
// VoteData data3 = vb.event(3);
// VoteData data4 = vb.event(4);
// VoteData data5 = vb.event(5);

String vote_result=request.getParameter("poll");
%>

<%if(request.getMethod().equals("POST")){ 
	int r = vb.vote(vote_result); 
	String m_id =  (String)session.getAttribute("m_id");
	vb.v_member(m_id, 1); //insert mid of event 1 to DB
%>
<!-----------------------------------그래프영역-------------------------------------------->
	<div id="chart8"></div>
	<script>
		var options = {
			'legend': {
	            names: ['<%=data.getStatement_a() %>',
	                    '<%=data.getStatement_b() %>',
	                    '<%=data.getStatement_c() %>',
	                    '<%=data.getStatement_d() %>',
	                    '<%=data.getStatement_e() %>',
	                    ],
	            hrefs: []
	        },
	        'dataset': {
	            title: 'Forward for the Next Game',
	            values: [<%=data.getOption_a() %>,
	           	 	<%=data.getOption_b() %>,
	            	<%=data.getOption_c() %>,
	            	<%=data.getOption_d() %>,
	            	<%=data.getOption_e() %>],
	            colorset: ['#ec0000'],
	            fields:['']
	        },
	        'chartDiv': 'chart8',
	        'chartType': 'column',
	        'chartSize': { width: 600, height: 400 },
	        'maxValue': '',
	        'increment': 1
		};

		Nwagon.chart(options);
	</script>
	
	<%} %>
<!----------------------------------그래프영역-------------------------------------------->
</div>
</div>

</body>
</html>