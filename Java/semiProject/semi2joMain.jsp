<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type='text/css' rel='stylesheet' href='css/semi2joMain.css'>
<script src='js/BoardBean9.js'></script>
<title>Insert title here</title>
</head>
<body class="bodybgimg">
	<%
		request.setCharacterEncoding("utf-8");//한글 깨짐 방지 String
	%>
	<%
		String content = "TopMenu/news.jsp";
		//아래 if문은 content.jsp의 Parameter가 있으면  ?
		if(request.getParameter("content") != null)
		{// ? content에 넣어라
			content = request.getParameter("content");
		}
	%>
	<div id='mainMain'>
		<div id='mainHeader'>
			<jsp:include page='login.jsp' />
		</div>
		<div id='mainTopMenu'>
			<%@include file='mainSubPage/semiMainTopMenu.jsp'%>
		</div>
		<jsp:include page="<%=content%>" />
	</div>
	<div id='mainFooter'>
		<div id='footMsg'>
			© 아스날 한국 공식 홈페이지 <br /> 도움을 주신분 - 박원기 / 박은직 / 정백경 / 오승욱 / 김태완 / 정세진
			등 중앙HTA학원생 | 2015.05.08 <br> <a
				href='semi2joMain.jsp?content=TopMenu/comeonArsenal.jsp'
				id='mainTopMenuA'>구단 오시는길</a>
		</div>
	</div>
</body>
</html>