<%@page import="bean.memberData"%>
<%@page import="bean.memberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#inven_left_menu {
	margin: auto;
	width: 140px;
}

#inven_member_my {
	padding-top: 5px;
	padding-left: 10px;
	/* 	border:1px solid #0562BA; */
	background-color: #0562BA;
	width: 130px;
	height: 20px;
	color: #ffffff;
	font-weight: bold;
	font-family: '돋움';
	font-size: 12px;
}

#inven_member_id {
	padding-left: 10px;
	padding-top: 5px;
	border-bottom: 1px solid #CFDAE3;
	width: 130px;
	height: 17px;
	font-weight: bold;
	font-family: '돋움';
	font-size: 12px;
}

#inven_member_level {
	padding-left: 10px;
	padding-top: 5px;
	border-bottom: 1px solid #CFDAE3;
	width: 130px;
	height: 17px;
	font-weight: bold;
	font-family: '돋움';
	font-size: 12px;
}

#inven_member_point {
	padding-left: 10px;
	padding-top: 5px;
	border-bottom: 1px solid #CFDAE3;
	width: 130px;
	height: 17px;
	font-weight: bold;
	font-family: '돋움';
	font-size: 12px;
}

#inven_member_licence {
	padding-left: 10px;
	padding-top: 5px;
	border-bottom: 1px solid #0562BA;
	width: 130px;
	height: 17px;
	font-weight: bold;
	font-family: '돋움';
	font-size: 12px;
}


#inven_menu_btn {
	border: 1px solid #CFDAE3;
	background-color: #CFDAE3;
	width: 130px;
	height: 17px;
	color: #ffffff;
	font-weight: bold;
	font-family: '돋움';
	font-size: 12px;
}

#inven_item_buy_btn {
	margin-top: 40px;
	border-top: 1px solid #CFDAE3;
	border-bottom: 1px solid #CFDAE3;
	padding-left: 10px;
	padding-top: 5px;
	border-bottom: 1px solid #CFDAE3;
	width: 130px;
	height: 17px;
	font-family: '돋움';
	font-size: 12px;
}

#inven_inventory {
	/* 	border-bottom:1px solid #0275E0; */
	/* 	border-right:1px solid #0275E0; */
	/* 	border-left:1px solid #0275E0; */
	border-top: 1px solid #5187C5;
	border-bottom: 1px solid #5187C5;
	background-color: #5187C5;
	color: #ffffff;
	padding-left: 10px;
	padding-top: 5px;
	width: 130px;
	height: 17px;
	font-family: '돋움';
	font-size: 12px;
	font-weight: bold;
	color: white;
	background: rgb(122, 188, 255); /* Old browsers */
	background: -moz-radial-gradient(top, ellipse cover, rgba(122, 188, 255, 1)
		0%, rgba(96, 171, 248, 1) 44%, rgba(49, 143, 237, 1) 100%);
	/* FF3.6+ */
	background: -webkit-gradient(radial, center center, 0px, center center, 100%,
		color-stop(0%, rgba(122, 188, 255, 1)),
		color-stop(44%, rgba(96, 171, 248, 1)),
		color-stop(100%, rgba(49, 43, 237, 1))); /* Chrome,Safari4+ */
	background: -webkit-radial-gradient(center, ellipse cover, rgba(122, 188, 255, 1)
		0%, rgba(96, 171, 248, 1) 44%, rgba(49, 143, 227, 1) 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-radial-gradient(top, ellipse cover, rgb(77, 160, 236) 0%,
		rgb(55, 144, 234) 44%, rgb(28, 127, 217) 100%); /* Opera 12+ */
	background: -ms-radial-gradient(top, ellipse cover, rgb(77, 160, 236) 0%,
		rgb(55, 144, 234) 44%, rgb(28, 127, 217) 100%); /* IE10+ */
	background: radial-gradient(ellipse at top, rgb(77, 160, 236) 10%,
		rgb(55, 144, 234) 44%, rgb(28, 127, 217) 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff',
		endColorstr='#318fed', GradientType=1);
}
</style>
</head>
<body>
	<jsp:useBean id="md" class="bean.memberData" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="md" />
	<%
		String id = "";
		id = (String) session.getAttribute("id");
		System.out.println(id);
		memberBean mb = new memberBean();
		memberData data = mb.view3(id);
	%>
	<div id='inven_member_my'>내정보</div>
	<div id='inven_member_id'>닉네임 <font color='#199900'><%=data.getNick()%></font></div>
	<div id='inven_member_level'>
		레벨 <font color='#199900'><%=data.getNow_level()%></font>
	</div>
	<div id='inven_member_point'>
		포인트 <font color='#199900'><%=data.getPoint()%></font>
	</div>
	<div id='inven_member_licence'>
		라이센스 <font color='#199900'><%=data.getLicence()%></font>
	</div>
	<a href='mainSlr.jsp?content=TopContents/mall/main_buy.jsp'>
		<div id='inven_item_buy_btn'>아이템 구매</div>
	</a>
	<a href='mainSlr.jsp?content=TopContents/mall/main_inven.jsp'>
		<div id='inven_inventory'>인벤토리</div>
	</a>
	</div>
</body>
</html>