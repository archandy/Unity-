<%@page import="semiBean.SemiNewsData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div id='mainCenterNewsTop'>
			<div id='mainCenterTopNewsPic'>
				<a href="http://sports.wowtv.co.kr/news/view.asp?newsid=WS00000016019"> <img class='picOpacity'
					src="imgs/news/prem_trophy_alpha.png" height="250px">
			</div>
			<div id='mainCenterTopNewsTxt'>
				<font class='newshover' style='font-size: 30px; font-weight: bold;'>
					</p> 아스날은 왜 첼시의 벽을 넘지 못했나?
				</font>
				<hr>
				<font size='2'>아스날이 27일 에미레이트 스타디움에서 열린 첼시와의 홈 경기에서 득점 없이
					무승부에 그치며 우승 도전이 사실상 좌절됐다. 5경기씩을 남겨둔 상황에서 승점 10점차. 첼시가 남은 5경기에서 2승만
					거두더라도 아스날은 산술적 가능성마저 잃게 된다. </a>
				</font></a>
			</div>

		</div>
		<div id='mainCenterReal'>

			<%
				System.out.println("리스트jsp진입");
			%>
			<jsp:useBean id="nb" class='semiBean.SemiNewsBean' scope='page' />
			<jsp:setProperty property="*" name="nb" />
			<%
				ArrayList<SemiNewsData> al = nb.newsList();
				for(SemiNewsData d : al)
				{
			%>
			<div class='mainCenterContentsNews'>
				<div class='topbar'>　 새 소식</div>
				<p />
				<div class='mainCenterContentsNewsPic'>
					<a href="<%=d.getNews_url()%>"> <img class='picOpacity'
						src="imgs/news/<%=d.getAttfile()%>" width="450px" height="300px"></a>
				</div>
				<div class='mainCenterContentsNewsTxt'>
					<font style='color: black; font-size: 25px; font-weight: bold;'>
						</p> <%=d.getNews_title()%>
					</font> <font style='color: black; font-size: 13px;'>
						</p> <%=d.getNews_desc()%>
					</font>
				</div>
			</div>
			<%
				}
			%>


			<hr>
			<div class='topbar'>　 하이라이트</div>
			<p />
			<iframe width="450" height="300"
				src="https://www.youtube.com/embed/IZMX_yx0ns8" frameborder="0"
				allowfullscreen></iframe>
		</div>
</body>
</html>