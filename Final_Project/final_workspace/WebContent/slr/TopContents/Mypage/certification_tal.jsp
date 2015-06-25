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
#tal_main {
	/* 	border: 1px solid #B3B3B3; */
	width: 850px;
	margin: auto;
	font-family: '돋움';
	font-size:12px;
}

#tal_title {
	border-bottom: 1px solid #E5E5E5;
	height: 20px;
	padding-bottom: 10px;
}

#tal_guide {
	padding: 10px;
	margin-top: 20px;
	border: 1px solid #E5E5E5;
	width: 828px;
	height: 40px;
}

#tal_guideimg {
	margin-left: 100px;
	height: 40px;
	width: 45px;
	float: left;
	height: 40px;
}

#tal_guide_text {
	margin-left: 20px;
	padding-top: 5px;
	float: left;
	width: 500px;
	font-size: 13px;
}

#tal_cetification {
	margin: auto;
	margin-top: 50px;
	width: 400px;
	height: 200px;
}

#tal_info1 {
	float: left;
}

#tal_info2 {
	margin-left: 40px;
	text-align: center;
	float: left;
	margin-top: 20px;
	font-size: 13px;
	padding: 5px;
}

#tal_input {
	margin-top: 20px;
	margin-left: 40px;
	float: left;
	width: 250px;
}

#tal_id {
	margin-top: 5px;
	float: left;
	width: 50px;
	float: left;
}

#tal_id_input {
	float: left;
	margin-left: 20px;
}

#tal_pwd {
	margin-top: 10px;
	float: left;
	width: 50px;
}

#tal_pwd_input {
	margin-top: 5px;
	float: left;
	margin-left: 20px;
}

#tal_btn_longin {
	margin-top: 20px;
	float: left;
}

#tal_line {
	margin-left: 12px;
	border-left: 1px solid #E5E5E5;
	border-right: 1px solid #E5E5E5;
	height: 250px;
	width: 390px;
}
</style>
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
	
	<div id='tal_main'>
		<div id='tal_title'>
			<img src='TopContents/Mypage/mem_img/tt_info.gif'>
		</div>
		<div id='tal_guide'>
			<div id=tal_guideimg>
				<img src='TopContents/Mypage/mem_img/info_img.gif'>
			</div>
			<div id=tal_guide_text>
				<b><%=data.getNick() %></b>님의 비밀번호와 개인정보 및 보유 장비등을 수정하실 수 있습니다.
			</div>
		</div>

		<div id=tal_cetification>
			<div id='tal_info1'>
				<img src='TopContents/Mypage/mem_img/info_out_title.gif'>
			</div>
			<div id='tal_line'>
				<div id='tal_info2'>
					회원 탈퇴시 1개월간 재가입이 불가능하며,<br /> 이용정지중 탈퇴는 영구제명이 될 수 있습니다.<br /> 탈퇴시
					이전 게시물은 삭제가 불가능하게 되므로<br /> 신중을 가하시기 바랍니다.<br /> 이 페이지는 보안접속을
					제공합니다.<br />

				</div>

				<div id='tal_input'>
					<div id='tal_id'>
						<img src='TopContents/Mypage/mem_img/mypage_id.jpg'>
					</div>
					<div id='tal_id_input'>
						<input type='text' size='15px'>
					</div>
					<div id='tal_pwd'>
						<img src='TopContents/Mypage/mem_img/mypage_pw.jpg'>
					</div>
					<div id='tal_pwd_input'>
						<input type='password' size='15px'>
					</div>
				</div>
				<div id='tal_btn_longin'>
					<img src='TopContents/Mypage/mem_img/bt_out.gif'>
				</div>
			</div>
			<div id='tal_e2'>
				<img src='TopContents/Mypage/mem_img/info_e2.gif'>
			</div>
		</div>
	</div>
</body>
</html>