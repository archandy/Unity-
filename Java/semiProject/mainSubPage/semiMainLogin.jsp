<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name='login_form' method='post' action='login_result.jsp'>
		<%
			String mid = null;
			if(session.getAttribute("mid") == null)
			{
		%>

	<span id='mainLoginIDPW'> 
		<input type='text' name='mainMid' id='mainMidPw' placeholder="아이디"> 
		<input type='text' name='mainPw' id='mainMidPw' placeholder="비밀번호">
	</span>
	<span id='mainLoginBtn'> 
		<img src="imgs/btn/loginbtn.png" onclick="btnLogIn">
	</span>
	<div id='mainLoginRegister'>
		<a href='#'><font size=1>회원가입</a> | <a href='#'>ID/PW찾기</font></a>
	</div>
	<%
			}
			else
			{
				mid = (String) session.getAttribute("mid");
				out.print("[" + mid + "]" + "님 방가<br><br>");
				out.print("<input type='submit' value='로그아웃'>");
			}
		%>
	</form>
</body>
</html>