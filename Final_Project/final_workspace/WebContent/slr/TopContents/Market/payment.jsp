<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<Style>
#pay_main {
	border: 2px solid #000000;
	width: 500px;
	height: 500px;
}

#pay_top {
	background-color: #6D7993;
	width: 500px;
	height: 30px;
}

#pay_topz {
	font-weight:800;
	font-family: 고딕;
	margin-left: 20px;
	padding-top: 2px;
	font-size: 18px;
	color: #ffffff;
}

#pay_top2_left, #pay_top2_right {
	display: inline-block;
}
#pay_top2_left, #pay_center1, #pay_center3, #pay_price5,
	#pay_price7, #pay_top0_left {
	width: 110px;
	height: 30px;
	background-color: #f0f0f0;
}

#pay_center1, #pay_center2, #pay_center3, #pay_center4, #pay_price5,
	#pay_price6, #pay_price7, #pay_price8, #pay_top0_left, #pay_top0_right
	{
	display: inline-block;
}

#pay_result, #pay_cancle {
	display: inline-block;
}

#z1, #z2, #z3, #z4, #pay_top2, #zz1 {
	border-bottom: 1px solid #f0f0f0;
}

#pay_AAGG {
	width: 300px;
	height: 150px;
}

#pay_AAGG {
	border-left: 2px solid #f0f0f0;
	border-top: 2px solid #f0f0f0;
	margin: auto;
	margin-top: 10px;
}

#z5 {
	margin-top: 20px;
	text-align: center;
}

#pay_left {
	background-color: #aabbcc;
	width: 130px;
	height: 470px;
}

#pay_left, #pay_center {
	display: inline-block;
}

#pay_center {
	width: 350px;
	font-size: small;
	vertical-align: top;
	margin-top: 10px;
	margin-left: 5px;
}
#pay_check{
	margin-top:5px;
	margin-left:20px;
	font-size: x-small;
}
#pay_center{
	
	border-top: 2px solid #aabbcc;
}
#pay_top2_left,#pay_top0_left{
text-align:right;

}
#zz1{
	margin-bottom: 20px;
}
#pay_main{
color:#333;font-size:12px;line-height:18px;font-family:"돋움"
}
</Style>
</head>
<body>
	<div id="pay_main">
		<div id="pay_top">
			<div id="pay_topz">결제하기</div>
		</div>

		<div id="pay_left">
			<div id="pay_img">
				<img src="img/zzzz1234.png" width="130" height="50">
			</div>
		
		</div>
		<div id="pay_center">
			<div id="pay_top2">
				<div id="pay_top2_left">상품명</div>
				<div id="pay_top2_right">f</div>
			</div>

			<div id="zz1">
				<div id="pay_top0">
					<div id="pay_top0_left">상품금액</div>
					<div id="pay_top0_right">ㅋㅋㅋ</div>
				</div>
			</div>

			<div id="z1">
				<div id="pay_center1">구매자</div>
				<div id="pay_center2">d</div>
			</div>
			<div id="z2">
				<div id="pay_center3">은행명</div>
				<div id="pay_center4">
					<select name="pay_select" size="1">
						<option value="학생" checked>우리은행</option>
						<option value="농업">농협</option>
						<option value="상업">신한은행</option>
						<option value="공업">KB국민은행</option>
						<option value="서비스">하나은행</option>
						<option value="공무원">한국씨티은행</option>
						<option value="일반인">외환은행</option>
					</select>
				</div>
			</div>
			<div id="z3">
				<div id="pay_price5">출금계좌번호</div>
				<div id="pay_price6">
					<input type="text" name="p_pay">
				</div>
			</div>
			<div id="z4">
				<div id="pay_price7">예금주</div>
				<div id="pay_price8">
					<input type="text" name="p_pay2">
				</div>
			</div>



			<div id="pay_AAGG" style="overflow-x: hidden; white-space: pre-line;">
				제 1조(약관의 적용) 온라인 신용카드 결제(이하 "카드결제"라 한다)에 의하여 신문구독료를 납부하고자 하는 자(이하
				"납부자"라 한다)와 "미주중앙일보"에 대하여 이 약관을 적용합니다. 제 2조(출금) 납부자가 지급하여야 할 신문 구독료에
				대하여 카드 결제 청구가 있을 경우에는 정해진 과정에 따라 별도의 통지 없이 납부자의 지정 계좌에서 출금을 의뢰하는 기관인
				"미주중앙일보"는 지정하는 납기일(휴일인 경우 익 영업일)에 출금하여 납부에 충당합니다. 제 3조(미출금분 추가 출금)
				카드결제 지정계좌의 예금 잔액(자동대출 약정이 있는 경우 대출한도 포함)이 납기일 현재 미주중앙일보의 청구 금액보다
				부족하거나, 예금의 지급제한, 약정 대출의 연체 등 납부자의 과실에 의하여 대체납부가 불가능하여 발생한 미 출금분에
				대해서는 익월 25일 추가 출금하게 됩니다. 제 4조(과실책임) 카드결제 지정계좌의 예금 잔액(자동대출 약정이 있는 경우
				대출한도 포함)이 납기일 현재 미주중앙일보의 청구금액보다 부족하거나, 예금의 지급제한, 약정대출의 연체 등 납부자의 과실에
				의하여 대체납부가 불가능한 경우에 발생한 손해는 납부자의 책임으로 합니다. 제 5조(전액출금) 미주중앙일보는
				전액출금방식으로 승인되었으므로 청구금액에 비해 예금 잔액이 부족할 경우는 잔액을 출금할 수 없으며 납부자의 예금계좌를
				보유한 금융기관(이하 "은행"이라 한다)의 사정에 의하여 출금이 불가능 할 수 있습니다. 제 6조(출금 우선순위) 납기일에
				동일한 수종의 출금 청구가 있는 경우의 출금 우선 순위는 은행에서 정하는 바에 따릅니다. 제 7조(최초 개시일) 카드결제에
				의한 출금 개시는 은행 및 미주중앙일보의 사정에 의하여 결정되어지며 통상 납부자가 카드결제를 신청한 즉시 출금 개시월이
				됩니다. 제 8조(출금기준 및 이의제기) 카드결제 신청에 의한 지정계좌에서의 출금은 해당 납기일 은행 영업시간 내에 입금된
				예금에 한하여 미주중앙일보의 청구대로 출금하며, 청구금액에 이의가 있는 경우에는 납부자와 미주중앙일보가 협의하여
				조정합니다. 제 9조(정보제공) 카드결제 업무처리를 위하여 카드결제와 관련된 납부자의 카드정보(카드회사명, 카드소유자명,
				카드번호, 카드유효기간 등)가 은행, 카드사 및 미주중앙일보의 카드결제 업무를 대행하는 Authorize.net 에
				제공되며, 제공된 정보는 동 업무 이외의 목적에 사용할 수 없습니다.</div>

			<div id="pay_check">
				<label><input type="checkbox" name="p_check" value="df"> 위 상품의
				구매조건을 확인했고, 결제진행에 동의합니다.</label>
			</div>

			<div id="z5">
				<div id="pay_result">
					<input type="button" value="결제">
				</div>
				<div id="pay_cancle">
					<input type="reset" value="취소">
				</div>
			</div>



		</div>




	</div>
</body>
</html>