<%@page import="semiBean.MemberData"%>
<%@page import="semiBean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
	function init() {
		alert("아이디와 비밀번호를 다시 확인해주세요");

	}
	function info() {
		window.open('info.jsp', '회원정보', ' width=550 height=400');
	}

	function newRegister() {
		window.open('insert.jsp', '회원정보', ' width=700 height=900');

	}
	
	function logintry() {
		// data.getMid()는 서버에 있는 데이터이기때문에 javascript(클라이언트)쪽에선 서버에 접근할 수가 없기때문에
		// 몰래 form 안에 input hidden으로 클라이언트에 저장시켜야 한다. .
		url = "login_result.jsp"
		login_form.action = url;
		login_form.submit();
	}
	function logouttry() {
		// data.getMid()는 서버에 있는 데이터이기때문에 javascript(클라이언트)쪽에선 서버에 접근할 수가 없기때문에
		// 몰래 form 안에 input hidden으로 클라이언트에 저장시켜야 한다. .
		url = "login_result2.jsp";
		logout.action = url;
		logout.submit();
	}
</script>

</head>
<body>
	<%
		String m_id = null;
		String m_nick =null;
		String itemname=null;
		int m_price;
		if (session.getAttribute("m_id") == null) {
	%>
	<div class='login_form'>
		<form name='login_form' method='post' action="login_result.jsp">
			<input type='text' name='m_id' class='mid' size='6' placeholder="아이디" autocomplete=off>
			<img class='loginregister' src='imgs/login/login.png' width="80px" onclick="logintry()">
			<input type='password' name='m_pwd' class='mpw' size='6' placeholder="암호">
<!-- 			<input type='submit' value='로그인'> -->
			<div class='register'><a href="#" id='newRegister' onClick='newRegister()'>회원가입</a></div>
			|
			<div class='findIdPw'>ID/PW찾기</div>
		</form>
	</div>
	<%
		} else if (session.getAttribute("m_id").equals("d")) {
	%>
	<script>
		init();
	</script>
	<div class='login_form'>
		<form name='login_form' method='post' action="login_result.jsp">
			<input type='text' name='m_id' class='mid' size='6' placeholder="아이디" autocomplete=off>
			<img class='loginregister' src='imgs/login/login.png' width="80px" onclick="logintry()">
			<input type='password' name='m_pwd' class='mpw' size='6' placeholder="암호">
			<div class='register'><a href="#" id='newRegister' onClick='newRegister()'>회원가입</a></div>
			|
			<div class='findIdPw'>ID/PW찾기</div>
		</form>
	</div>
	<%
		}
		else
		{
	%>
	<div class='login_form'>
		<form id='loginoutfrm' name='logout' method='post' action='login_result2.jsp'>
			<%
				m_id = (String) session.getAttribute("m_id");
				m_nick = (String)session.getAttribute("m_nick");
				itemname = (String)session.getAttribute("itemname");
				 m_price= (Integer)session.getAttribute("m_price");
				
					%>
					<div class='helloregister'><b><%=m_nick%></b>님</div>
					<img class='loginregister' src='imgs/login/myinfo.png' width="75px" height="27px" onclick='info()'>
					<br>
					<div class='helloregister'>환영합니다</div>
					<img class='loginregisterpw' src='imgs/login/logout.png' width="75px" height="27px" onclick='logouttry()'>
<!-- 					<input type='submit' value='로그아웃'> -->
					<%
				}
			%>
		</form>
	</div>

</body>
</html>