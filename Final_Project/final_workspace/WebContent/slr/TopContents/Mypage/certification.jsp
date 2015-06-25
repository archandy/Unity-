<%@page import="bean.memberData"%>
<%@page import="bean.memberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 인증 필요</title>
<style>
#pri_main {
	/* 	border: 1px solid #B3B3B3; */
	width: 850px;
	margin: auto;
	font-family: '돋움';
	font-size:12px;
}

#pri_title {
	border-bottom: 1px solid #E5E5E5;
	height: 20px;
	padding-bottom: 10px;
}

#pri_guide {
	padding: 10px;
	margin-top: 20px;
	border: 1px solid #E5E5E5;
	width: 828px;
	height: 40px;
}

#pri_guideimg {
	margin-left: 100px;
	height: 40px;
	width: 45px;
	float: left;
	height: 40px;
}

#pri_guide_text {
	margin-left: 20px;
	padding-top: 5px;
	float: left;
	width: 500px;
	font-size: 13px;
}

#pri_cetification {
	margin: auto;
	margin-top: 50px;
	width: 400px;
	height: 200px;
}

#pri_info1 {
	float: left;
}

#pri_info2 {
	margin-left: 40px;
	text-align: center;
	float: left;
	margin-top: 20px;
	font-size: 13px;
	padding: 5px;
}

#pri_input {
	margin-top: 20px;
	margin-left: 40px;
	float: left;
	width: 250px;
}

#pri_id {
	margin-top: 5px;
	float: left;
	width: 50px;
	float: left;
}

#pri_id_input {
	float: left;
	margin-left: 20px;
}

#pri_pwd {
	margin-top: 10px;
	float: left;
	width: 50px;
}

#pri_pwd_input {
	margin-top: 5px;
	float: left;
	margin-left: 20px;
}

#pri_btn_longin {
	margin-top: 20px;
	float: left;
}

#pri_line {
	margin-left: 12px;
	border-left: 1px solid #E5E5E5;
	border-right: 1px solid #E5E5E5;
	height: 210px;
	width: 390px;
}
</style>

<script>
function init() {
	frm.onsubmit = chk;
}

function chk() {
	var flag=false;
	var id = frm.id.value;
	var pw = frm.password.value;

	

	if(id == ""){
		alert("아이디를 입력해주세요");
		return false;
	}
	
	if(pw==""){
		alert("비밀번호를 입력해주세요");
		return false;
	}
}
</script>
</head>
<body>
<jsp:useBean id="md" class="bean.memberData" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="md" />
	<%
		String id = "";
		id = (String) session.getAttribute("id");
		
		memberBean mb = new memberBean();
		memberData data = mb.view3(id);
		
	%>
	<div id='pri_main'>
		<div id='pri_title'>
			<img src='TopContents/Mypage/mem_img/tt_info.gif'>
		</div>
		<div id='pri_guide'>
			<div id=pri_guideimg>
				<img src='TopContents/Mypage/mem_img/info_img.gif'>
			</div>
			<div id=pri_guide_text>
				<b><%=data.getNick() %></b>님의 비밀번호와 개인정보 및 보유 장비등을 수정하실 수 있습니다.
			</div>
		</div>

		<div id=pri_cetification>
			<div id='pri_info1'>
				<img src='TopContents/Mypage/mem_img/info_login_title.gif'>
			</div>
			<div id='pri_line'>
				<div id='pri_info2'>
					서비스를 이용하기 위하여 정보인증이 필요합니다.<br /> 본 페이지는 보안접속을 제공합니다.
				</div>
	<form name='frm' method='post' action='mainSlr.jsp?content=TopContents/Mypage/main_mod.jsp' >
				<div id='pri_input'>
					<div id='pri_id'>
						<img src='TopContents/Mypage/mem_img/mypage_id.jpg'>
					</div>
					<div id='pri_id_input'>
						<input type='text' size='15px' name='id'>
					</div>
					<div id='pri_pwd'>
						<img src='TopContents/Mypage/mem_img/mypage_pw.jpg'>
					</div>
					<div id='pri_pwd_input'>
						<input type='password' size='15px'name='password'>
					</div>
				</div>
				<div id='pri_btn_longin'>
						<input type='submit' value='로그인' >
<!-- 					<a href='mainSlr.jsp?content=TopContents/Mypage/main_mod.jsp'> -->
<!-- 						<img src='TopContents/Mypage/mem_img/bt_login_info.jpg'> -->
					</a>
				</div>
				</form>
			</div>
			
			<div id='pri_e2'>
				<img src='TopContents/Mypage/mem_img/info_e2.gif'>
			</div>
		</div>
	</div>
	<script>init()</script>
</body>
</html>