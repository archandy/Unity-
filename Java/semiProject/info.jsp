<%@page import="semiBean.AuctionBean"%>
<%@page import="semiBean.MemberData"%>
<%@page import="semiBean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='css/semi2joMain.css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function update(){
	location.href='update.jsp';
}
function deleted(){
	location.href='delete.jsp';
}
</script>
<link rel='stylesheet' type='text/css' href='css/info.css'>
</head>
<body>


<jsp:useBean id="bean" class="semiBean.MemberData" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id='ad' class='semiBean.AuctionData' scope='page' />
<jsp:setProperty property="*" name='ad' />


	
<%
String m_id="";
m_id = (String)session.getAttribute("m_id");


MemberBean mb = new MemberBean();
MemberData data = mb.view2(m_id);

AuctionBean sb = new AuctionBean();
ad = sb.view();

%>

<div class ='m_info_main'>
<div class= 'm_info_top'>&nbsp;>
</div>
<div class='m_info_top2'>
회원정보
</div>
	<div class='aa'>	<div class='m_info_id'>아이디  </div><div class='m_info_id2'><%=data.getM_id() %></div></div>
<%-- 	<div class='aa2'>	<div class='m_info_pwd'>비밀번호 </div><div class='m_info_pwd2'> <%=data.getM_pwd() %></div></div> --%>
		<div class='aa3'><div class='m_info_nick'>닉네임  </div><div class='m_info_nick2'><%=data.getM_nick() %></div></div>
		<div class='aa4'><div class='m_info_gen'>성별  </div><div class='m_info_gen2'><%=data.getM_gen() %></div></div>
		<div class='aa5'><div class='m_info_itemno'>진행중인 경매상품</div><div class='m_info_itemno2'> <%=ad.getItemName() %></div></div>
		<div class='aa6'><div class='m_info_price'>입찰하신금액</div><div class='m_info_price2'> <%=data.getM_price() %></div></div>
</div>

<div id = 'm_btnZone'>
	<div class='m_info_sub'><input type = 'button' value = '수정' id ='m_btnUpdate' onClick='update()'></div>
	<div class='m_info_del'><input type = 'button' value = '회원탈퇴' id ='m_btnDelete' onClick='deleted()'></div>
</div>


</body>
</html>