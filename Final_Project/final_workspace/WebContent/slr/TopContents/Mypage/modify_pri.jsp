<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />

<title>회원 정보 인증 필요</title>
<style>
 #mod_main {
	/* 	border: 1px solid #B3B3B3; */
	width: 850px;
	margin: auto;
	font-size:12px;
	font-family: '돋움';
}

#mod_title {
	border-bottom: 1px solid #E5E5E5;
	height: 20px;
	padding-bottom: 10px;
}

#mod_guide {
	padding: 10px;
	margin-top: 30px;
	border: 1px solid #E5E5E5;
	width: 828px;
	height: 40px;
}

#mod_guideimg {
	margin-left: 100px;
	height: 40px;
	width: 45px;
	float: left;
	height: 40px;
}

#mod_guide_text {
	margin-left: 20px;
	padding-top: 5px;
	float: left;
	width: 550px;
	font-size: 13px;
}

#mod_info {
	border-bottom: 1px solid #E5E5E5;
	width: 25px;
	height: 20px;
	margin-top: 20px;
	float: left;
	padding-bottom: 3px;
}

#mod_info2 {
	border-bottom: 1px solid #E5E5E5;
	width: 825px;
	height: 20px;
	float: left;
	margin-top: 20px;
	font-size: 13px;
	padding-bottom: 3px;
}

#mod_id {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myid {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
	font-size: 13px;
}

#mod_level {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mylevel {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
	font-size: 13px;
}

#mod_point {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mypoint {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
	font-size: 13px;
}

#mod_pw {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mypw {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_pw2 {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mypw2 {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_nick {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mynick {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 180px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_mynick_btn {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 570px;
	height: 25px;
	padding-top: 8px;
	background-color: #FBFBFB;
}

#mod_birthdate {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mybirthdate {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
	font-size: 13px;
}

#mod_email {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myemail {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_homepage {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myhomepage {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_nateon {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mynateon {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_msn {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mymsn {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_soge {
	border-bottom: 2px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 90px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mysoge {
	border-bottom: 2px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 90px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_add_info {
	border-bottom: 1px solid #E5E5E5;
	width: 25px;
	height: 20px;
	margin-top: 5px;
	float: left;
	padding-bottom: 3px;
}

#mod_add_info2 {
	border-bottom: 1px solid #E5E5E5;
	width: 825px;
	height: 20px;
	float: left;
	margin-top: 5px;
	font-size: 13px;
	padding-bottom: 3px;
}

#mod_phone {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myphone {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_address {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myaddress {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_tel {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mytel {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_workplace {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myworkplace {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_workplace_address {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myworkplace_address {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_workplace_tel {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myworkplace_tel {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_bankname {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_bank {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 110px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_account_number {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	padding-top: 8px;
	width: 640px;
	height: 25px;
	background-color: #FBFBFB;
}

#mod_job {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_myjob {
	border-bottom: 1px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
}

#mod_susin {
	border-bottom: 2px solid #E5E5E5;
	float: left;
	width: 95px;
	height: 25px;
	background-color: #F2F2F2;
	padding-top: 8px;
}

#mod_mysusin {
	border-bottom: 2px solid #E5E5E5;
	float: left;
	width: 750px;
	height: 25px;
	padding-top: 8px;
	padding-left: 5px;
	background-color: #FBFBFB;
	font-size: 13px;
}

#mod_end_info {
	border-bottom: 2px solid #E5E5E5;
	float: left;
	font-size: 12px;
	width: 850px;
	margin-top: 5px;
	height: 60px;
}

#mod_btn {
	float: right;
	margin-top: 5px;
}

#mod_btn_mod {
	float: left;
	margin: 5px;
}

#mod_btn_cancel {
	float: left;
	margin-top: 5px;
}
</style>
</head>
<body>
	<div id='mod_main'>
		<div id='mod_title'>
			<img src='TopContents/Mypage/mem_img/tt_info.gif'>
		</div>
		<div id='mod_guide'>
			<div id=mod_guideimg>
				<img src='TopContents/Mypage/mem_img/info_img.gif'>
			</div>
			<div id=mod_guide_text>
				<b>'ohsuengwook'</b>님의 비밀번호와 개인정보 및 보유 장비등을 수정하실 수 있습니다.
			</div>
		</div>

		<div id='mod_info'>
			<img src='TopContents/Mypage/mem_img/subicon_info.gif'>
		</div>
		<div id='mod_info2'>기본 회원정보</div>
		<div id='mod_id'>
			<img src='TopContents/Mypage/mem_img/info_id.gif'>
		</div>
		<div id='mod_myid'>
			<b>ohsuengwook</b> (2015년 05월 05일 가입 1번째 회원)
		</div>
		<div id='mod_level'>
			<img src='TopContents/Mypage/mem_img/info_level.gif'>
		</div>
		<div id='mod_mylevel'>
			<b>Level 1</b>
		</div>
		<div id='mod_point'>
			<img src='TopContents/Mypage/mem_img/info_point.gif'>
		</div>
		<div id='mod_mypoint'>
			<b>1000 P</b> [ 글 0개/댓글 0개 ]
		</div>
		<div id='mod_pw'>
			<img src='TopContents/Mypage/mem_img/info_pw.gif'>
		</div>
		<div id='mod_mypw'>
			<input type='password'>
		</div>
		<div id='mod_pw2'>
			<img src='TopContents/Mypage/mem_img/info_pwck.gif'>
		</div>
		<div id='mod_mypw2'>
			<input type='password'>
		</div>
		<div id='mod_nick'>
			<img src='TopContents/Mypage/mem_img/info_nick.gif'>
		</div>
		<div id='mod_mynick'>
			<input type='text' value=AROS>
		</div>
		<div id='mod_mynick_btn'>
			<img src='TopContents/Mypage/mem_img/bt_re.gif'>
		</div>
		<div id='mod_birthdate'>
			<img src='TopContents/Mypage/mem_img/info_birth.gif'>
		</div>
		<div id='mod_mybirthdate'>1987년 9월 17일</div>
		<div id='mod_email'>
			<img src='TopContents/Mypage/mem_img/info_email.gif'>
		</div>
		<div id='mod_myemail'>
			<input type=text value='ohsuengwook@naver.com' size = '40px'>
		</div>
		<div id='mod_homepage'>
			<img src='TopContents/Mypage/mem_img/info_homepage.gif'>
		</div>
		<div id='mod_myhomepage'>
			<input type=text value='blog.naver.com/?ohsuengwook' size = '40px'>
		</div>
		<div id='mod_nateon'>
			<img src='TopContents/Mypage/mem_img/info_nate.gif'>
		</div>
		<div id='mod_mynateon'>
			<input type=text size = '40px'>
		</div>
		<div id='mod_msn'>
			<img src='TopContents/Mypage/mem_img/info_msn.gif'>
		</div>
		<div id='mod_mymsn'>
			<input type='text' size = '40px'>
		</div>
		<div id='mod_soge'>
			<img src='TopContents/Mypage/mem_img/info_contents.gif'>
		</div>
		<div id='mod_mysoge'>
			<textarea cols='60px' rows='4px' name='soge'></textarea>
		</div>
		<div id='mod_add_info'>
			<img src='TopContents/Mypage/mem_img/subicon_info.gif'>
		</div>
		<div id='mod_add_info2'>추가 정보</div>
		<div id='mod_phone'>
			<img src='TopContents/Mypage/mem_img/info_phone1.gif'><font
				color='#ff0000'>*</font>
		</div>
		<div id='mod_myphone'>
			<input type=text>
		</div>
		<div id='mod_address'>
			<img src='TopContents/Mypage/mem_img/info_address.gif'><font
				color='#ff0000'>*</font>
		</div>
		<div id='mod_myaddress'>
			<input type=text size='80px'>
		</div>
		<div id='mod_tel'>
			<img src='TopContents/Mypage/mem_img/info_phone2.gif'>
		</div>
		<div id='mod_mytel'>
			<input type=text>
		</div>
		<div id='mod_workplace'>
			<img src='TopContents/Mypage/mem_img/info_job.gif'>
		</div>
		<div id='mod_myworkplace'>
			<input type=text>
		</div>
		<div id='mod_workplace_address'>
			<img src='TopContents/Mypage/mem_img/info_jobadd.gif'>
		</div>
		<div id='mod_myworkplace_address'>
			<input type=text size='80px'>
		</div>
		<div id='mod_workplace_tel'>
			<img src='TopContents/Mypage/mem_img/info_jobtel.gif'>
		</div>
		<div id='mod_myworkplace_tel'>
			<input type=text>
		</div>
		<div id='mod_bankname'>
			<img src='TopContents/Mypage/mem_img/info_bank.gif'>
		</div>
		<div id='mod_bank'>
			<select name="bank">
				<option value="은행선택">은행선택</option>
				<option value="산업">산업</option>
				<option value="기업">기업</option>
				<option value="국민">국민</option>
				<option value="외환">외환</option>
				<option value="수협">수환</option>
				<option value="농협">농협</option>
				<option value="축협">축협</option>
				<option value="우리">우리</option>
				<option value="SC제일">SC제일</option>
				<option value="신한">신한</option>
				<option value="한미">한미</option>
				<option value="대구">대구</option>
				<option value="부산">부산</option>
				<option value="광주">광주</option>
				<option value="제주">제주</option>
				<option value="전북">전북</option>
				<option value="경남">경남</option>
				<option value="새마을금고">새마을금고</option>
				<option value="신용협동조합">신용협동조합</option>
				<option value="상호저축">상호저축</option>
				<option value="씨티">씨티</option>
				<option value="HSBC">HSBC</option>
				<option value="우체국">우체국</option>
				<option value="하나">하나</option>
			</select>
		</div>
		<div id='mod_account_number'>
			<input type=text value=''>
		</div>
		<div id='mod_job'>
			<img src='TopContents/Mypage/mem_img/info_oc.gif'><font
				color='#ff0000'>*</font>
		</div>
		<div id='mod_myjob'>
			<input type=text>
		</div>
		<div id='mod_susin'>
			<img src='TopContents/Mypage/mem_img/info_reception.gif'><font
				color='#ff0000'>*</font>
		</div>
		<div id='mod_mysusin'>
			<input type='checkbox' name='susin' value='전체 쪽지/SMS 수신 여부'>전체
			쪽지/SMS 수신 여부
		</div>
		<div id='mod_end_info'>
			<font color='#ff0000'>*</font>표의 정보항만 타회원에게 공개설정을 할 수 있습니다. 이외는 회원님의
			편의와 신분확인 용도로 사용됩니다.<br /> 주소 정보는 공개시 지역만 공개됩니다.<br /> 국제 전화번호는
			+국가번호-지역번호-전화번호 형식으로 시작하여야 합니다.
		</div>
		<div id='mod_btn'>
			<div id='mod_btn_mod'>
				<img src='TopContents/Mypage/mem_img/bt_modify.gif'>
			</div>
			<div id='mod_btn_cancel'>
				<img src='TopContents/Mypage/mem_img/bt_cancel.gif'>
			</div>
		</div>
	</div>
</body>
</html>