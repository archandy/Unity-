<%@page import="java.util.ArrayList"%>
<%@page import="semiBean.BoardData9"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
<link type='text/css' rel='stylesheet' href='css/semi2joMain.css'>
<script src='js/BoardBean9.js'></script>
</head>
<body>
	<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>

		<div id='listBoard'>

			<div id='listMainGongji'>

				<div class='div_rno' style="border-right: 1px solid gray;">번호</div>
				<div class='div_jemok'
					style="text-align: center; border-right: 1px solid gray;">
					<font color="#000000">제목</font>
				</div>
				<div class='div_id' style="border-right: 1px solid gray;">아이디</div>
				<div class='div_date'>작성일</div>
			</div>
			<!-- 		공지사항 -->
			<div id='div_vote'>
				<div class='div_rno'>&nbsp;</div>
				<div class='div_jemok' style="font-weight: bold;">
					<a href='#' class='div_jemok' onclick="goVote()"> <font
						color="#000000">5월의 투표 조사</font></a>
				</div>
				<div class='div_id'>운영자</div>
				<div class='div_date'>2015-05-07</div>
			</div>
			<div id='div_vote'>
				<div class='div_rno'>&nbsp;</div>
				<div class='div_jemok' style="font-weight: bold;">
					<a href='#' class='div_jemok' onclick="goVotePrev()"> <font
						color="#000000">이전 투표 결과</font></a>
				</div>
				<div class='div_id'>운영자</div>
				<div class='div_date'>2015-05-07</div>
			</div>
			<!-- 		공지사항 -->
			<jsp:useBean id="ll" class='semiBean.BoardBean9' scope='page' />
			<jsp:setProperty property="*" name="ll" />
			<%
				String findStr = "";
												if(request.getParameter("findStr") !=null)
												{
												findStr = request.getParameter("findStr");
												}
			%>

			<%
				ArrayList<BoardData9> a = ll.list();
											int cnt=1;	
											for(BoardData9 s : a)
											{
												if(cnt % 2 == 0)
												{
			%>
			<div id='listMain_rowOdd'>
				<%
					}
							else
							{
				%>
				<div id='listMain_rowEven'>
					<%
						}
						String[] temp = (s.getDeep().split("-"));
						String gap="";
						for(int i = 1; i < temp.length; i++)
						{
						gap += "&nbsp;&nbsp;<img src='imgs/boardbtn/icon_reply.gif'>";
						}
					%>
					<div class='div_rno'><%=s.getFrno()%></div>
					<div class='div_jemok'>
						<a href='#' class='div_jemok' onclick="goview('<%=s.getFrno()%>')">
							<font color="#000000"><%=gap%><%=s.getFjemok()%> <%
 	if(s.getFdata() != null)
    				 		{
 %> <img src='test.jpg'> <%
 	}
 %> </font>
						</a>

					</div>
					<div class='div_id'><%=s.getFid()%></div>
					<div class='div_date'>
						<%=s.getFmdate()%></div>
				</div>
				<%
					cnt++;
																					}
				%>
			</div>
			<form name='list9_frm' method='post'>
				<input type='button' id="btn_nw" value='글쓰기'> <input
					type='hidden' name='nowPage'>
			</form>
			<!------------------페이지---------------------->
			<div id='page'>
				<%
					if(ll.getNowBlock() > 1)
															{
				%>
				<input type='button' value='처음' onclick="goPage(1)"> <input
					type='button' value='이전'
					onclick="goPage(<%=ll.getStartPage() - 1%>)">
				<%
					}
				%>

				<%
					String nowFlag = "";
															for(int i = ll.getStartPage(); i <= ll.getEndPage(); i++)
															{
																if(ll.getNowPage() == i)
																	nowFlag = "disabled"; //nowPage가 i라면 (현재 페이지가 선택되어있다면?) 비활성화시켜라
																else nowFlag = ""; //그게아니라면 아무것도하지말아라
				%>
				<input type='button' value='<%=i%>' <%=nowFlag%>
					onclick="goPage(<%=i%>)">
				<%
					}
				%>

				<%
					if(ll.getNowBlock() < ll.getTotBlock())
															{
				%>

				<input type='button' value='다음'
					onclick="goPage(<%=ll.getEndPage() + 1%>)"> <input
					type='button' value='맨끝' onclick="goPage(<%=ll.getTotPage()%>)">
				<%
					}
				%><br> <br>
			</div>
			<form name='list_frm' method='post'>
				<input type='text' name='findStr' value='<%=ll.getFindStr()%>'>
				<input type='submit' value='검색'>
			</form>
		</div>
		<script>f_nw();</script>
</body>
</html>