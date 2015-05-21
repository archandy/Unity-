<%@page import="java.util.Iterator"%>
<%@page import="semiBean.SemiLeaderData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function yearSelectedOnload(){
		 var optionObj=document.frm.year.options;
		 var index = document.frm.year.options.selectedIndex;
		 var finalSelVal = optionObj[index].value;
		 alert(finalSelVal+"년이 선택됨");
// 		 document.location.reload();
// 		 document.frm.year.value = finalSelVal;
		 
	}

//  	function yearSelect(){
<%--		frm.year.value = "<%=request.getParameter("year")%>"; --%>
// 		document.location.reload();
// 	}
</script>
<title>Insert title here</title>
</head>
<!-- <body onload="yearSelectedOnload()"> -->
<body>
	<div id='mainCenterLeaderBoardTop'>
		<div id='mainCenterTopLeaderTxt'>
			<font style='font-size: 30px; font-weight: bold;'>
				</p> 프리미어리그
				<p />순위
				<p />
				<div class='dash'></div>
			</font>

		</div>

		<div id='mainCenterTopNewsPic'>
			<img class='picOpacity' src="imgs/leaderboard/leaderboard2.png"
				height="275px">
		</div>
	</div>
	<div id='mainCenterRealLeaderBoard'>
		<div id='leaderboard_year'>
			<!-- 			<select name='years'> -->
			<!-- 				<option name='oneYear'>2014-2015</option> -->
			<!-- 				<option name='twoYear'>2013-2014</option> -->
			<!-- 			</select> -->
			<form name="frm" method="post" action=''>
				선택년도 <select name="year" title="연도 선택">
					<option value="2014">2014</option>
					<option value="2013">2013</option>
					<option value="2012">2012</option>
				</select> <input type="submit" value="검색">
			</form>
		</div>
		<%
			if(request.getMethod().equals("POST"))
			{
		%>
		<%
			ArrayList<SemiLeaderData> al = new ArrayList<SemiLeaderData>();
				System.out.println("리스트jsp진입");
		%>

		<jsp:useBean id="lb" class='semiBean.SemiLeaderBean' scope='page' />
		<jsp:setProperty property="*" name="lb" />

		<%
			if(request.getParameter("year").equals("2014"))
				{
					al = lb.leaderList();
		%>
		<div id='leaderBoard_Image'>
			<br> 2014-2015
		</div>
		<%
			}
				else if(request.getParameter("year").equals("2013"))
				{
					al = lb.leaderList2();
		%>
		<div id='leaderBoard_Image'>
			<br> 2013-2014
		</div>
		<%
			}
				else if(request.getParameter("year").equals("2012"))
				{
					al = lb.leaderList3();
		%>
		<div id='leaderBoard_Image'>
			<br> 2012-2013
		</div>
		<%} %>
		<div id='leaderboard_big'>


			<div id='leaderboard_subjectColumn' style="margin-bottom: 2px;">

				<div class='leaderboard_column' style="color: #5f5f5f;"></div>
				<div class='leaderboard_column' style="color: #5f5f5f">순위</div>
				<div class='leaderboard_columnTname' style="color: #5f5f5f">팀</div>
				<div class='leaderboard_column' style="color: #5f5f5f">경기수</div>
				<div class='leaderboard_column' style="color: #5f5f5f">승</div>
				<div class='leaderboard_column' style="color: #5f5f5f">무</div>
				<div class='leaderboard_column' style="color: #5f5f5f">패</div>
				<div class='leaderboard_column' style="color: #5f5f5f">득점</div>
				<div class='leaderboard_column' style="color: #5f5f5f">실점</div>
				<div class='leaderboard_column' style="color: #5f5f5f">득실</div>
				<div class='leaderboard_column' style="color: #5f5f5f">승점</div>

			</div>

			<%
			int cnt=1;
				for(SemiLeaderData d : al)
					{
						if(cnt % 2 == 0)
						{
			%>


			<div id='leaderboard_rowOdd'>
				<%
					}
							else
							{
				%>
				<div id='leaderboard_rowEven'>
					<%
						}
					%>

					<!-- 리더보드 제일 큰 div -->

					<div class='leaderboard_column'>
						<img src='imgs/epl_teamThumb/<%=d.getTeamthumb()%>' width="30px">
					</div>
<%-- 					<div class='leaderboard_column'><%=d.getRanking()%></div> --%>
						<div class='leaderboard_column'><%
						out.print(cnt);
						cnt++;
						%></div>

					<%
						if(d.getTeamname().equals("아스널"))
								{
					%><div class='leaderboard_columnTnameArsenal'><%=d.getTeamname()%></div>
					<%
						}
								else
								{
					%>
					<div class='leaderboard_columnTname'><%=d.getTeamname()%></div>
					<%
						}
					%>


					<div class='leaderboard_column'><%=d.getGamecnt()%></div>
					<div class='leaderboard_column'><%=d.getWin()%></div>
					<div class='leaderboard_column'><%=d.getDraw()%></div>
					<div class='leaderboard_column'><%=d.getLose()%></div>
					<div class='leaderboard_column'><%=d.getFor_goal()%></div>
					<div class='leaderboard_column'><%=d.getAgainst_goal()%></div>
					<div class='leaderboard_column'><%=d.getFor_against_goal()%></div>
					<div class='leaderboard_column'><%=d.getPoint()%></div>


				</div>
				<%
					}
				%>
				<div id='leaderboard_rowEven' style="background-color: #ec0000">
				</div>
				<%
					}
				%>
			</div>
		</div>
</body>
</html>