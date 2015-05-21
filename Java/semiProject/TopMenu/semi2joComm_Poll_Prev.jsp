<%@page import="semiBean.VoteData"%>
<%@page import="semiBean.VoteBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src='js/semiPoll.js'></script>
<link rel='stylesheet' type='text/css' href='css/team_view.css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Poll</title>
</head>
<body>
<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>

		<div id='listBoard'>
	<jsp:useBean id="v" class="semiBean.VoteData" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="v" />
	<div class='vote_wrap'>
		<!-- 	<h2>Weekly Poll</h2> -->
		<%
			VoteBean vb = new VoteBean();
			VoteData data = vb.event(1);//event 보기와 질문을 선택할 db불러오기.
			String mid = "";
			mid = (String) session.getAttribute("m_id");
			// VoteData v_data= vb.v_check(mid);
			VoteData data2 = vb.event(2);
			VoteData data3 = vb.event(3);
			VoteData data4 = vb.event(4);
			VoteData data5 = vb.event(5);
		%>

		<div class='vote_body'>
			<!-- 		<div class='vote_question'> -->
			<!-- 			<h2>주간 투표</h2> -->
			<%-- 			<h2><%=data.getEvent() %></h2> --%>
			<!-- 		</div> -->

			<!-- 		<div class='vote_form'> -->
			<!-- 			<form name='pollFrm' method='post' action='semi2joMain.jsp?content=TopMenu/semi2joPoll_view.jsp' onsubmit='return check(this)'> -->
			<!-- 				<div class='vote_ul'> -->
			<!-- 					<ul> -->
			<%-- 						<li class='vote_li'><label><%=data.getStatement_a() %> --%>
			<!-- 						<input type='radio' name='poll' value='option_a'></label> -->

			<%-- 						<li class='vote_li'><label><%=data.getStatement_b() %> --%>
			<!-- 						<input type='radio' name='poll' value='option_b'></label> -->

			<%-- 						<li class='vote_li'><label><%=data.getStatement_c() %> --%>
			<!-- 						<input type='radio' name='poll' value='option_c'></label> -->

			<%-- 						<li class='vote_li'><label><%=data.getStatement_d() %> --%>
			<!-- 						<input type='radio' name='poll' value='option_d'></label> -->

			<%-- 						<li class='vote_li'><label><%=data.getStatement_e() %> --%>
			<!-- 						<input type='radio' name='poll' value='option_e'></label> -->
			<!-- 					</ul> -->
			<!-- 				</div> -->
			<!-- 				<div class='vote_submit'> -->
			<%-- 					<input type='hidden' name='vote_result' value='<%=request.getParameter("poll") %>'> --%>
			<!-- 					<input type='submit' id='vote_btn' name="pSubmit" value='vote'> -->
			<!-- 				</div> -->

			<!-- 			</form> -->
			<!-- 		</div> -->


			<h2><%=data2.getEvent()%></h2>
			<div id="chart"></div>
			<script>
		
		var options = {
			'dataset': {
				title: '우리 구단에 가장 잘 어울리는 연애인은?',
				values:[<%=data2.getOption_a()%>,
		           	 	<%=data2.getOption_b()%>,
		            	<%=data2.getOption_c()%>,
		            	<%=data2.getOption_d()%>,
		            	<%=data2.getOption_e()%>],
				colorset: ['#56b4e9', '#DC143C', '#cc79a7', '#009e73', '#0072b2'],
				fields: ['<%=data2.getStatement_a()%>',
		                    '<%=data2.getStatement_b()%>',
		                    '<%=data2.getStatement_c()%>',
		                    '<%=data2.getStatement_d()%>',
		                    '<%=data2.getStatement_e()%>',
		                    ]
			},
			'donut_width' : 100, 
			'core_circle_radius':0,
			'chartDiv': 'chart',
			'chartType': 'pie',
			'chartSize': {width:600, height:300}
		};

		Nwagon.chart(options);
	</script>

			<h2><%=data3.getEvent()%></h2>
			<div id="chart_d"></div>
			<script>
		
		var options = {
			'dataset': {
				title: '경기중 가장 생각나는 음식은?',
				values:[<%=data3.getOption_a()%>,
		           	 	<%=data3.getOption_b()%>,
		            	<%=data3.getOption_c()%>,
		            	<%=data3.getOption_d()%>,
		            	<%=data3.getOption_e()%>],
				colorset: ['#2BC8C9', '#FF8C00', '#DC143C','#2EB400', '#666666'],
				fields: ['<%=data3.getStatement_a()%>',
		                    '<%=data3.getStatement_b()%>',
		                    '<%=data3.getStatement_c()%>',
		                    '<%=data3.getStatement_d()%>',
		                    '<%=data3.getStatement_e()%>',
		                    ]
			},
			'donut_width' : 40, 
			'core_circle_radius':60,
			'chartDiv': 'chart_d',
			'chartType': 'donut',
			'chartSize': {width:600, height:300}
		};

		Nwagon.chart(options);
	</script>
			<h2><%=data5.getEvent()%></h2>
			<div id="Nwagon11"></div>
			<script>
	    var options = {
	        'legend':{
	            names: [['<%=data5.getStatement_a()%>'], ['<%=data5.getStatement_b()%>'], 
	                    ['<%=data5.getStatement_c()%>'], ['<%=data5.getStatement_d()%>'],
	                    ['<%=data5.getStatement_e()%>']]
	        },
	        'dataset': {
	            title: 'Avg Bill Paid',
	            values: [[<%=data5.getOption_a()%>],[<%=data5.getOption_b()%>],[<%=data5.getOption_c()%>]
	            		,[<%=data5.getOption_d()%>],[<%=data5.getOption_e()%>]],
	            degree_values:[120, 120, 120, 120, 120],
	            colorset: ['#009e73', '#56b4e9', "#666666", '#FF8C00', '#DC143C'], //color-blind safe colors 
	            fields: ['<%=data5.getStatement_a()%>', '<%=data5.getStatement_b()%>',
	                     '<%=data5.getStatement_c()%>', '<%=data5.getStatement_d()%>',
	                     '<%=data5.getStatement_e()%>'],
						opacity : [ 0.9 ]
					},
					'core_circle_value' : [ '50.6%' ],
					'core_circle_radius' : 25,
					'maxValue' : 100,
					'increment' : 20,
					'chartDiv' : 'Nwagon11',
					'chartType' : 'polar_pie',
					'chartSize' : {
						width : 700,
						height : 400
					}
				};
				Nwagon.chart(options);
			</script>

		</div>
		<div id='btnzone'>
			 <input type='button' value='삭제' id='btndelete'> 
			<input type='button' value='목록으로' id='btnlist'>
		</div>
		</div></div>
</body>
</html>