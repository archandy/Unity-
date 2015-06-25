<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SLRClub, 사진가를 위한 커뮤니티</title>
<link href='css/MainPage.css' rel='stylesheet' type='text/css'>

<script src='js/lib/jquery-2.1.4.js'></script>

</head>
<body>
	<%
		String content = "TopContents/MainPage/MainPage.jsp";
		if(request.getParameter("content") != null)
		{// ? content에 넣어라
			content = request.getParameter("content");
		}
	%>
	
	

	<div class='main'>
		<div id='header'>

			<div id="slrlogo">
				<a href='mainSlr.jsp'><img src="imgs/main/logo_slr.png"></a>
			</div>
			
			<div id="slrlogin">
				<jsp:include page="TopContents/Login"></jsp:include>
			</div>
			<div id='Ad1'></div>

		</div>
		<div id='middle'>
			<%@include file='TopMenuLinks/TopMenuLinks.jsp'%>
			<div id='blankGalleryMain'>
				<div id='loginPart'><jsp:include page="TopContents/Login/LoginForm.jsp" /></div>
			</div>
			<jsp:include page="<%=content%>" />

		</div>
		<div id='footer'>
			<div id='footerCopyright'>COPYRIGHT (C) SLRCLUB. ALL RIGHTS
				RESERVED.</div>
		</div>
	</div>
</body>
</html> --%>