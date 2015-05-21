<%@page import="semiBean.AuctionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.pay_main{
	margin:auto;
	width:515px;
}
.pay_top{
	padding-left:350px;
	widht:510px;
}

.pay_menu{
	width:160px;
	float:left;
}
.pay_menu_card{
	border: 2px solid #aabbcc;
}

.pay_menu_card2{
	padding-top: 138px;
}


.g_main {
	border: 2px solid #aabbcc;
	width: 320px;
	height: 300px;
	float:right;
	padding-left: 30px;
	background-color: #F6F6F6;
}

</style>

<script>
	function init() {
		gold.onsubmit = chk;
	}
	function chk() {
		var flag = true;
		var flag2 = true;

		var count = 0;

		for (var i = 0; i < document.gold.elements["g_card"].length; i++) {
			if (document.gold.elements["g_card"][i].checked == true) {
				count++;
			}
		}
		if (count <= 0) {
			alert("카드사를 선택해주세요");
			return false;
		}

		if (gold.card1.value == "") {
			alert("카드번호를 입력해주세요");
			return false;
		}
		if (gold.card2.value == "") {
			alert("카드번호를 입력해주세요");
			return false;
		}
		if (gold.card3.value == "") {
			alert("카드번호를 입력해주세요");
			return false;
		}
		if (gold.card4.value == "") {
			alert("카드번호를 입력해주세요");
			return false;
		}
		if (gold.pwd.value == "") {
			alert("카드비밀번호를 입력해주세요");
			return false;
		}
		if (gold.juminnum.value == "") {
			alert("주민번호 뒷자리를 입력해주세요");
			return false;
		}

	}
</script>
</head>
<body>
	<jsp:useBean id="ad" class='semiBean.AuctionData'></jsp:useBean>
	<jsp:setProperty property="*" name="ad" />
	<%
		AuctionBean ab = new AuctionBean();
		ad = ab.view();
	%>
	<div class='pay_main'>
	<div class='pay_top'>
		<img src='../imgs/payment/inicis.png' width='200px' height='100px'>
	</div>
	<div class='pay_menu'>
		<div class='pay_menu_card'>
			<img src='../imgs/payment/card.gif'>
		</div>
		<div class='pay_menu_card2'>
			<img src='../imgs/payment/sin.png'>
		</div>
	</div>
	

	<form name='gold' method='post' action='payment_result.jsp'>
		<div class='g_main'>
			<div class='g_no3'>
				<div class='g_5'>
					<li>금액</li>
				</div>
				<div class='g_6'>
					<label><%=ad.getPrice()%> 원</label>
				</div>
			</div>

			<div class='card_kind'>
				<div class='g_1'>
					<li>카드선택</li>
				</div>
				<div class='g_2'>
					<input type="radio" name='g_card' value='신한카드'>신한카드 <input
						type="radio" name='g_card' value='롯데카드'>롯데카드 <input
						type="radio" name='g_card' value='태완카드'>태완카드
				</div>
			</div>
			<div class='card_num'>
				<div class='g_3'>
					<li>신용카드번호</li>
				</div>
				<div class='g_4'>
					<input type='text' name='card1' maxlength="4" size='4'><label>
						-</label> <input type='text' name='card2' maxlength="4" size='4'><label>
						-</label> <input type='text' name='card3' maxlength="4" size='4'><label>
						-</label> <input type='password' name='card4' maxlength="4" size='4'>
				</div>
			</div>
			<div class='gigan'>
				<li>유효기간</li> <select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>

				</select><label>월</label> <select>
					<option>15</option>
					<option>16</option>
					<option>17</option>
					<option>18</option>
					<option>19</option>
					<option>20</option>
					<option>21</option>
				</select> <label>년</label>

			</div>
			<div class='card_pwd'>
				<li>카드 비밀번호</li> <input type='password' name='pwd' maxlength="2"
					size='2'><label>XX </label><label> (앞 두자리)</label>
			</div>
			<div class='jumin'>
				<li>주민 등록번호</li> <label>XXXXXX - </label><input type='password'
					name='juminnum' maxlength="7" size='7'><label>(뒷
					7자리)</label>
			</div>

			<p />
			<div class='pay_btn'>
				<input type="submit" value='확인'> <input type="button"
					value='취소' onClick="window.close()">
			</div>
		</div>
	</form>
	</div>
	<script>
		init()
	</script>
</body>
</html>