<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">





<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function init() {
		frm.onsubmit = chk;
	}

	function chk() {
		var flag = true;
		var flag2 = true;

		var ischeck = false;
		
		var mid = frm.m_id.value;
		var pwd = frm.m_nick.value;
		var aa = frm.m_pwd.value;
		var aa2 = frm.m_pwd_c.value;
		var count = 0;
		var reg = new RegExp('[0-9a-zA-Z!@$_]+$');
		var reg2 = new RegExp('[0-9a-zA-Z]+$');

		flag = reg.test(mid);
		flag2 = reg2.test(pwd);
		if (mid == "") {
			alert("아이디를 입력해주세요");
			return false;
		}

		if (flag == false) {
			alert('아이디 칸에는 영숫자@를 입력하세요');
			frm.m_id.focus();
			return flag;
		}
		if (pwd == "") {
			alert("닉네임을 입력해주세요");
			return false;
		}

		if (flag2 == false) {
			alert('닉네임 칸에는 영숫자만 입력하세요');
			frm.m_nick.focus();
			return flag2;
		}
		if (aa != aa2) {
			alert('비밀번호가 다릅니다 확인해주세요');
			frm.m_pwd.focus();
			return false;
		}
		if (aa == "") {
			alert("비밀번호를 입력해주세요");
			frm.m_pwd.focus();
			return false;
		}

		for (var i = 0; i < document.frm.elements["m_gen"].length; i++) {
			if (document.frm.elements["m_gen"][i].checked == true) {
				count++;
			}
		}
		if (count <= 0) {
			alert("성별을 선택해 주세요");
			return false;
		}
		
		
		if (document.frm.elements["m_chk"].checked == false) {
			alert("개인정보 약관에 동의하지 않으셨습니다.");
			return false;
		}
		if (document.frm.elements["m_chk2"].checked == false) {
			alert("이용약관에 동의하지 않으셨습니다.");
			return false;
		}
	
	}
	function checkid2() {
		ischeck = true;
		var mid = document.frm.m_id.value;
		if (mid == "")
			alert("입력된 아이디가 없습니다.");
		else
			{
			window.open("checkid2.jsp?m_id=" + mid , "", "width=500 height=300");
			}
	}
	function checknick() {
		var nick = document.frm.m_nick.value;
		if (nick == ""){
			alert("입력된 닉네임이 없습니다.");
	}
		else{
			window.open("checknick.jsp?m_nick=" + nick, "",
					"width=500 height=300");
			}
	}

	function checkcheck(){
		window.open("insert_result.jsp","ddd", "width=400px height=100px");
		window.close();
	}
	

</script>
<title>Insert title here</title>
<link rel='stylesheet' type='css/text' href='css/mem_css.css'>
</head>
<body>
	<jsp:useBean id='mb' class="semiBean.MemberBean" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="mb" />

	<div class='mem_1'>
		<div id='mem_bar_all'>
			<div class='mem_bar'>
				<font color="#d80000"> &nbsp;＞</font>
			</div>
			<div class='mem_bar2'>　회원가입</div>
		</div>
		<form name='frm' method='post' action='insert_result.jsp'>
			<div class='mem_main'>
				<div class='mem_top1'>
					<div class='mem_id'>이메일</div>
					<div class='mem_id2'>
						<input type='text' class='inputText' name='m_id' size='40'>

						<div class='mem_check'>
						<form name='ccc'>
							<input type='button' name='btnclick' value='중복확인' onClick="javascript:checkid2()">
							<input type='hidden' name='vvvv' value='false'>
							</form>	
						</div>
					</div>
				</div>
				<div class='mem_top2'>
					<div class='mem_nick'>닉네임</div>
					<div class='mem_nick2'>
						<input type='text' class='inputText' name='m_nick' size='40'>
						<div class='mem_check_nick'>
						
							<input type='button' value='중복확인'
								onClick="javascript:checknick()">
							<input type='hidden' name='vvvv2' value='false'>	
						</div>

					</div>
				</div>
				<div class='mem_top3'>
					<div class='mem_pwd'>비밀번호</div>
					<div class='mem_pwd2'>
						<input type="password" name='m_pwd' class='inputText' size='50'>
					</div>
				</div>
				<div class='mem_top4'>
					<div class='mem_pwd_c'>비밀번호 확인</div>
					<div class='mem_pwd_c2'>
						<input type="password" name='m_pwd_c' class='inputText' size='50'>
					</div>
				</div>
				<div class='mem_top5'>
					<div class='mem_gen'>성별</div>
					<div class='mem_gen2'>
						<input type="radio" name='m_gen' value='M'> 남자 <input
							type="radio" name='m_gen' value='F'> 여자
					</div>
				</div>

				<div id='mem_bar_all'>
					<div class='mem_bar'>
						<font color="#d80000"> &nbsp;＞</font>
					</div>
					<div class='mem_bar2'>　약관</div>
				</div>
				<div class='mem_yhak' style="overflow-x:hidden; ">
				
				
				<pre>
				<font size="2">
				1. 개인정보수집 및 이용목적 

가. 서비스 컨텐츠 제공, 특정 맞춤 서비스 제공, 본인인증 
나. 회원관리 
회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 가입의사 확인, 가입 및 가입획수 제한, 분쟁 조정을 위한 
기록보존, 불만처리 등 민원처리, 고지사항 전달 

2. 개인정보의 보유 및 이용기간 

이용자의 개인정보는 원척적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다.
단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.

가. 회원정보
- 보유기간
(1) 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제44조 5에 의한 제한적 본인확인의 목적이 달성된 경우보전 이유 : 부정 이용방지
보전 기간 : 1년
(2) “수산정보포털 원양가입자정보”에 관한 기록 : 3년 
(3) “수산정보포털 원양가입자정보”회원탈퇴시 : 6개월(6개월 만료 시점에서 5일 후 파기)
* 본 약관에 동의하지 않으면 회원가입을 하실 수 없습니다. 

</font>
</pre>
				</div>
				
				<div class='mem_yhak2'>
				<input type='radio' name='m_chk' value='t'>
				개인정보 약관에 동의합니다.
				
				</div>
				
				<div class='mem_yhak3' style="overflow-x:hidden;">
				<pre>
				<font size="2">
				
				제 1 조 (목 적)
이 서비스 이용약관(이하 “약관”이라 합니다)은 SK커뮤니케이션즈㈜(이하 “회사”라 합니다)가 제공하는 서비스와 관련하여 회사와 이용 고객(또는 회원) 간에
서비스의 이용 조건 및 절차, 회사와 회원 간의 권리, 의무 및 책임 사항 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 다음 각호와 같으며, 정의되지 않은 용어에 대한 해석은 관계법령 및 서비스별 안내에서 정하는 바에 따릅니다.

1)서비스 : 이용 고객 또는 회원이 pC, TV, 휴대형 단말기 등 각종 유무선 기기 또는 프로그램을 통하여 이용할 수 있도록 회사가 제공하는 모든 인터넷 서비스를 말하며,
회사가 공개한 ApI를 이용하여 제3자가 개발 또는 구축한 프로그램이나 서비스를 통하여 이용 고객 또는 회원에게 제공되는 경우를 포함합니다.
2)회원 : 이 약관에 동의하고 회사와 이용 계약을 체결하여, 회사가 제공하는 서비스를 사용하는 자를 말합니다.
3)이용고객 : 회사의 서비스를 이용하기 위하여 회사와 이용계약을 체결하려고 하는 자를 말합니다.
4)회원정보 : 회사가 이용고객에게 회원가입 신청양식(이하 “신청양식"이라 합니다)에 기재를 요청하는 이용고객의 개인정보를 말합니다.
5)ID(고유번호) : 회원의 식별과 회원의 서비스 이용을 위하여 사용되는 식별 정보를 말합니다.
6)비밀번호 : 회원의 회원정보 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합을 말합니다.
7)사이버머니 : 회원이 회사가 제공하는 결제수단을 이용하여 충전하고 서비스내에서 현금처럼 사용하는 가상의 화폐를 말합니다.
8)포인트(또는 마일리지) : 회사가 서비스의 원활한 이용을 위하여 회원에게 부여하는 재산적 가치 및 환가성이 없는 무형의 도구를 말합니다.
9)게시물 : 회원이 회사가 제공하는 서비스에 게시 또는 등록하는 부호(URL 포함), 문자, 음성, 음향, 영상(동영상 포함),이미지(사진 포함), 파일 등을 말합니다.
제 3 조 (약관의 효력 및 변경)
1)이 약관은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력이 발생합니다.
2)회사는 약관의 규제에 관한 법률, 위치정보보호법, 개인정보보호법, 전자상거래등에서의 소비자보호에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등
관계법령에 위배되지 않는 범위내에서 이 약관을 개정할 수 있습니다.
3)회사는 약관을 개정할 경우 그 개정이유 및 적용일자를 명시하여 현행 약관과 함께 적용일자 10일전부터 적용일 전일까지 제1항의 방법으로 공지합니다. 다만, 회원의 권리 또는 의무에 관한 중요한 규정의 변경은 최소한 30일전에 공지하고 개정약관을 회원이 등록한 메일, SMS 등으로 발송하여 통지합니다.
4)회사가 제3항에 따라 개정약관을 공지 또는 통지하면서 회원에게 약관 변경 적용일까지 거부의사를 표시하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 공지 또는 통지하였음에도 불구하고 회원이 명시적으로 거부의사를 표시하지 아니하는 경우 회원이 개정약관에 동의한 것으로 봅니다.
5)회원은 변경된 약관에 동의하지 아니하는 경우 서비스의 이용을 중단하고 이용계약을 해지할 수 있습니다. 이때 회사는 회원이 가입한 유료서비스이용기간이 남아 있는 경우 이용계약 해지시점을 기준으로 제11조, 제12조 또는 제16조에 따라 환불합니다.
6)국내이동통신사의 이동전화에 가입한 회원은 유무선연동 통합서비스의 원활한 제공을 위하여 이동전화 이용약관의 유무선 연동 통합서비스 관련 내용 중 서비스와 관련된
내용을 이 약관의 내용으로 하는데 동의한 것으로 봅니다.
7)회원은 약관의 변경에 대하여 주의의무를 다하여야 하며, 변경된 약관의 부지로 인한 회원의 피해는 회사가 책임지지 않습니다.
제 4 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항에 대해서는 정보통신망 이용촉진 및 정보보호등에 관한 법률, 약관의 규제에 관한 법률, 전기통신사업법 등 관계법령 및 회사가 정한
서비스의 세부이용지침 등의 규정에 따릅니다.

제 5 조 (이용계약의 성립)
1)서비스 이용계약은 이용고객이 이 약관 및 “개인정보의 수집 및 이용"에 “동의합니다"를 선택하고, 회사가 정한 신청양식을 작성하여 서비스의 이용을 신청한 후, 회사가
이를 승낙함으로써 성립합니다.
2)이용고객이 전항의 "동의합니다"를 선택하고 신청양식을 작성하는 것은 이 약관 및 “개인정보의 수집 및 이용”에 대한 내용을 숙지하고, 회사가 서비스 이용을 위해 운영하는 각종 정책(예 : 개인정보취급방침, 저작권 정책, 스팸정책 등
				
				
				</font>
				</pre>
				</div>
				
				<div class='mem_yhak4'>
				<input type='radio' name='m_chk2' value='tt'>
				이용약관에 동의합니다.
				
				</div>
				
				<div class='mem_button'>
					<input type='submit' value='확인' onclick='checkcheck()'>

				</div>

			</div>


		</form>

	</div>
	<script>
		init()
	</script>
</body>
</html>