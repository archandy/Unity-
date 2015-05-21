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
		<h2>Weekly Poll</h2>
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
			<div class='vote_question'>
				<h2>주간 투표</h2>
				<h2><%=data.getEvent()%></h2>
			</div>

			<div class='vote_form'>
				<form name='pollFrm' method='post'
					action='semi2joMain.jsp?content=TopMenu/semi2joPoll_view.jsp'
					onsubmit='return check(this)'>
					<div class='vote_ul'>
						<ul>
							<li class='vote_li'><label><%=data.getStatement_a()%>
									<input type='radio' name='poll' value='option_a'></label>
							<li class='vote_li'><label><%=data.getStatement_b()%>
									<input type='radio' name='poll' value='option_b'></label>
							<li class='vote_li'><label><%=data.getStatement_c()%>
									<input type='radio' name='poll' value='option_c'></label>
							<li class='vote_li'><label><%=data.getStatement_d()%>
									<input type='radio' name='poll' value='option_d'></label>
							<li class='vote_li'><label><%=data.getStatement_e()%>
									<input type='radio' name='poll' value='option_e'></label>
						</ul>
					</div>
					<div class='vote_submit'>
						<input type='hidden' name='vote_result'
							value='<%=request.getParameter("poll")%>'> <input
							type='submit' id='vote_btn' name="pSubmit" value='vote'>
					</div>

				</form>
			</div>



		</div>
		<div id='btnzone'>
			<input type='button' value='수정' id='btnupdate'>
			<input type='button' value='목록으로' id='btnlist'>
		</div>
		</div></div>
</body>
</html>