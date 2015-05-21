<%@page import="semiBean.AuctionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.pay_re_main{
	margin:auto;
	width:515px;
	
}
.pay_re_in{
	padding-left:350px;

}

.pay_re_con{
	padding-top:50px;
	width:510px;
	height:250px;
	border: 2px solid #aabbcc;
	text-align: center;
}


</style>
</head>
<body>
<jsp:useBean id="ad" class='semiBean.AuctionData'></jsp:useBean>
<jsp:setProperty property="*" name="ad"/>
<%

	AuctionBean ab = new AuctionBean();
	ad = ab.view();

%>
<div class='pay_re_main'>
<div class='pay_re_in'>
<img src='../imgs/payment/inicis.png' width='200px' height='100px'>
</div>
<div class='pay_re_con'>
<p/>
<p/>
<h2>결제완료</h2><p/>
<div>
<label><%=ad.getPrice() %>원이 결제되었습니다.</label><p/>
</div>
<div class = 'pay_re_btn'>
<form>
	<input type='button' value ='확인' onClick="window.close()">

</form>
</div>
</div>
</div>
</body>
</html>