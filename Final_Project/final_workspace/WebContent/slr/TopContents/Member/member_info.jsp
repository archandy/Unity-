<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./TopContents/Member/member_css.css">
<script>
function init() {
	frm.onsubmit = chk;
}

function chk() {
	var flag=false;
	var id = frm.id.value;
	var pw = frm.password.value;
	var pw2 = frm.password2.value;
	

	if(id == ""){
		alert("아이디를 입력해주세요");
		return false;
	}
	
	if(pw==""){
		alert("비밀번호를 입력해주세요");
		return false;
	}
	if(pw!=pw2){
		alert("비밀번호를 확인해주세요");
		return false;
	}
	if(frm.nick.value==""){
		alert("닉네임을 입력해주세요");
		return false;
	}
	if(frm.birthday.value=="" || frm.birthday2.value=="" || frm.birthday3.value==""){
		alert("생년 월일을 입력해주세요");
		return false;
	}
	if(frm.email.value==""){
		alert("이메일을 입력해주세요");
		return false;
	}
	
	

	
}


 

function checkid2() {
	ischeck = true;
	var id = frm.id.value;
	if (id == "")
		alert("입력된 아이디가 없습니다.");
	else
		{
		window.open("checkid2.jsp?id=" + id , "", "width=500 height=300");
		}
}
function checknick() {
	ischeck= true;
	var nick = frm.nick.value;
	if (nick == ""){
		alert("입력된 닉네임이 없습니다.");
}
	else{
		window.open("checknick.jsp?nick=" + nick, "", "width=500 height=300");
		}
}

// function checkcheck2(){
// 	location.href='mainSlr.jsp?content=TopContents/Member/member_last.jsp';
	
// } 

</script>
<style>
.join_wrap{
transform: scale(1.15, 1.2);
position: relative;
top:125px;
left:85px;
}
#member_gaip1 {
	margin-top: 50px;
	background-color: #f0f0f0;
	text-align: center;
	padding: 10px;
}

#member_main_ip,#member_boga {
	margin-top: 40px;
	margin-left: 40px;
}

#mem1, #mem2, #mem3, #mem4, #mem5, #mem6, #mem7, #mem8 ,#mem9,#mem10{
	border: 1px solid #f0f0f0;
	display: block;
}

#member_id, #member_pass, #member_passwd, #member_nick, #member_birth,
	#member_email, #member_susin, #member_gong {
	width: 120px;
	height: 35px;
	padding: 5px;
	background-color: #f0f0f0;
}

#member_id2, #member_pass2, #member_passwd2, #member_nick2,
	#member_birth2, #member_email2, #member_susin2, #member_gong2 {
	
}

#member_id, #member_id2 {
	display: inline-block;
}

#member_pass, #member_pass2 {
	display: inline-block;
}

#member_passwd, #member_passwd2 {
	display: inline-block;
}

#member_nick, #member_nick2 {
	display: inline-block;
}

#member_birth, #member_birth2 {
	display: inline-block;
}

#member_email, #member_email2 {
	display: inline-block;
}

#member_susin, #member_susin2 {
	display: inline-block;
}

#member_gong, #member_gong2 {
	display: inline-block;
}

#member_member{
	border-top: 2px solid #81BEF7;
	margin-top: 20px;
	width: 750px;
	height: 400px;
	margin: auto;
}
#member_member2 {
border-top: 2px solid #81BEF7;
	width: 750px;
	height: 550px;
	margin: auto;
}
#member_jaso{
display: inline-block;
width: 120px;
	height: 110px;
	padding: 5px;
	background-color: #f0f0f0;
	vertical-align: top;
}
#kkk,#kkk2{
margin-top:-30px;
display: inline-block;}

#bottomzz{
text-align: center;}


.join_wrap{
	color:#333;font-size:12px;line-height:18px;font-family:"돋움"
}
</style>
</head>
<body>
<form name='frm' method="post" action='mainSlr.jsp?content=TopContents/Member/member_last.jsp'> 
	<div class="join_wrap">

		<div class="page_tt">
			<div>
				<h2>
					<img src="./TopContents/Member/img/zxczxczxczxc.png" height="15">&nbsp;<img
						src="http://media.slrclub.com/sp_delivery/regist/join_tt.gif"
						alt="회원가입" class="rt" width="53" height="15" />
				</h2>
			</div>
			<div id="zzz123"></div>
			<div>
				<p>
					<b><font color="#81BEF7">SLRCLUB</font></b>에 회원으로 가입하세요. 다양한 정보와
					서비스가 회원전용으로 제공되고 있습니다.
				</p>
			</div>
		</div>
		<div id="member_gaip1">
			<div id="member_gaip">
				<img src="./TopContents/Member/img/ioio.png">
			</div>
		</div>

		<div id="member_main_ip">
			<img src="./TopContents/Member/img/vvccc.gif">
		</div>
		<div id="member_member">
			
			<div id="mem1">
				<div id="member_id">
					<font color="red">*</font>아이디
				</div>
				<div id="member_id2">
					<input type="text" size="15" name="id" style="height: 20px;">
					<input type="button" value="중복확인" onclick='checkid2()'> <font size="1">로그인시에만
						사용되며 변경할 수 없습니다.(영문, 숫자, _로만 아이디를 작성하세요)</font>
				</div>
			</div>
			<div id="mem2">
				<div id="member_pass">
					<font color="red">*</font>비밀번호
				</div>
				<div id="member_pass2">
					<input type="password" size="15" name="password"
						style="height: 20px;"> <font size="1"> 영문, 숫자,
						특수문자를 조합한 6자리 이상</font>
				</div>
			</div>
			<div id="mem3">
				<div id="member_passwd">
					<font color="red">*</font>비밀번호 확인
				</div>
				<div id="member_passwd2">
					<input type="password" size="15" name="password2"
						style="height: 20px;">
				</div>
			</div>

			<div id="mem4">
				<div id="member_nick">
					<font color="red">*</font>닉네임
				</div>
				<div id="member_nick2">
					<input type="text" size="15" name="nick" style="height: 20px;">
					<input type="button" value="중복확인" onclick='checknick()'><font size="1"> 게시판에
						표시되는 자신의 닉네임입니다. 중복확인을 해주세요.</font>
				</div>
			</div>


			<div id="mem5">
				<div id="member_birth">
					<font color="red">*</font>생년월일
				</div>
				<div id="member_birth2">
					<input type="text" size="5" name="birthday" style="height: 20px;">
					년<input type="text" size="5" name="birthday2" style="height: 20px;">월
					<input type="text" size="5" name="birthday3" style="height: 20px;">일
					 <label><input type="checkbox" name="member_birth_check">공개</label>
				</div>
			</div>


			<div id="mem6">
				<div id="member_email">
					<font color="red">*</font>이메일
				</div>
				<div id="member_email2">
					<input type="text" size="30" name="email" style="height: 20px;">
				</div>
			</div>



			<div id="mem7">
				<div id="member_susin">전체메일 수신</div>
				<div id="member_email2">
					<input type="checkbox" name="susin"> 메일링가입

				</div>
			</div>

			<div id="mem8">
				<div id="member_gong">전체메일 수신</div>
				<div id="member_gong2">
					<input type="checkbox" name="gong"> 정보 공개

				</div>
			</div>
		</div>
		
		<div id="member_boga">
				<img src="./TopContents/Member/img/ccvvv.gif">
			</div>
		<div id="member_member2">
			
		<div id="mem1">
				<div id="member_id">
					<font color="red"></font>개인홈페이지
				</div>
				<div id="member_id2">
					<input type="text" size="30" name="homepage" style="height: 20px;">
				</div>
			</div>
			<div id="mem2">
				<div id="member_pass">
					<font color="red"></font>네이트온
				</div>
				<div id="member_pass2">
					<input type="text" size="30" name="nate"
						style="height: 20px;"> 
				</div>
			</div>
			<div id="mem3">
				<div id="member_passwd">
					<font color="red"></font>MSN
				</div>
				<div id="member_passwd2">
					<input type="text" size="30" name="msn"
						style="height: 20px;">
				</div>
			</div>

			<div id="mem4">
				<div id="member_nick">
					<font color="red"></font>직업
				</div>
				<div id="member_nick2">
					<input type="text" size="30" name="job" style="height: 20px;">
				</div>
			</div>


			<div id="mem5">
				<div id="member_birth">
					<font color="red"></font>주소
				</div>
				<div id="member_birth2">
					<input type="text" size="60" name="address" style="height: 20px;">
					
				</div>
			</div>


			<div id="mem6">
				<div id="member_email">
					<font color="red"></font>전화번호
				</div>
				<div id="member_email2">
					<input type="text" size="3" name="homenumber" style="height: 20px;">
					- <input type="text" size="3" name="homenumber2" style="height: 20px;">
					- <input type="text" size="5" name="homenumber3" style="height: 20px;">
					 
				</div>
			</div>



			<div id="mem7">
				<div id="member_susin">휴대폰</div>
				<div id="member_email2">
					<input type="text" size="3" name="phonenumber" style="height: 20px;">
					- <input type="text" size="3" name="phonenumber2" style="height: 20px;">
					- <input type="text" size="5" name="phonenumber3" style="height: 20px;">

				</div>
			</div>

			<div id="mem8">
				<div id="member_gong">직장 주소</div>
				<div id="member_gong2">
					<input type="text" size="60" name="companyaddress" style="height: 20px;">

				</div>
			</div>
		
		
		<div id="mem9">
				<div id="member_susin">직장 전화번호</div>
				<div id="member_email2">
					<input type="text" size="3" name="companynumber" style="height: 20px;">
					- <input type="text" size="3" name="companynumber2" style="height: 20px;">
					- <input type="text" size="5" name="companynumber3" style="height: 20px;">

				</div>
			</div>
			
			<div id="mem10">
				<div id="member_jaso">자기소개서</div>
				<div id="member_email2">
					<textarea rows="5" cols="70" name='introduce'></textarea>

				</div>
			</div>
		
		</div>
		<div id="bottomzz">
		<div id="kkk">
				<input type="submit" value="회원가입" >
				
		</div>
		<div id="kkk2">
		<a href="mainSlr.jsp?content=TopContents/Member/member_secondPage.jsp">
			<img src="./TopContents/Member/img/hh2.jpg">
			</a>
		</div>
			
		</div>
	
		</div>
		</form>
		
		<script>
		init()
		</script>
</body>
</html>