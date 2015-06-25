<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name='login_form' method='post' action='TopContents/Login/LoginForm_result.jsp'>
		<%
			String mid = null;
			if(session.getAttribute("mid") == null)
			{
		%>
		<input type='text' name='mid' id='id' placeholder='아이디'> <br>
		<input type='password' name='pwd' id='pwd' placeholder='비밀번호'>
		<br> <input type='submit' value='로그인'> <br> <a
			href='includeMain2.jsp?content=findIdPw.jsp'>ID/PW찾기</a> <a
			href='includeMain2.jsp?content=register.jsp'>회원가입</a>

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