<%@page import="bean.levelData"%>
<%@page import="bean.levelBean"%>
<%@page import="bean.memberBean"%>
<%@page import="bean.memberData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inventory</title>
<style>
#inventory_main {
	float: right;
	width: 850px;
	height: 600px;
	/* 	background-color: #dddddd; */
	font-family: '돋움';
	font-size: 12px;
}

#inven_info {
	padding-left: 10px;
	padding-top: 10px;
	border-top: 1px solid #E5E5E5;
	border-bottom: 1px solid #E5E5E5;
	height: 200px;
	width: 840px;
	line-height: 200%;
	margin-top: 10px;
}

#inven_mylicence {
	padding-top: 5px;
	text-align: center;
	margin-top: 30px;
	width: 120px;
	height: 20px;
	color: #5187C5;
	border: 1px solid #E5E5E5;
	font-weight: bold;
	border-bottom: hidden;
}

#inven_licence_grade {
	text-align: center;
	float: left;
	border: 1px solid #E5E5E5;
	width: 120px;
	height: 105px;
}

#inven_licence_content {
	padding-top: 5px;
	padding-left: 10px;
	float: left;
	border: 1px solid #E5E5E5;
	border-left: hidden;
	width: 716px;
	height: 100px;
	line-height: 200%;
}

#inven_myitem_list {
	padding-top: 5px;
	text-align: center;
	margin-top: 130px;
	width: 120px;
	height: 20px;
	clear: both;
	font-weight: bold;
	color: #5187C5;
	border: 1px solid #E5E5E5;
	border-bottom: hidden;
}

#inven_item_name {
	padding-top: 5px;
	padding-left: 10px;
	float: left;
	border: 1px solid #E5E5E5;
	width: 110px;
	height: 20px;
}

#inven_item_info {
	padding-top: 5px;
	padding-left: 10px;
	float: left;
	border: 1px solid #E5E5E5;
	width: 390px;
	height: 20px;
	border-left: hidden;
}

#inven_item_enddate {
	padding-top: 5px;
	padding-left: 10px;
	float: left;
	border: 1px solid #E5E5E5;
	width: 316px;
	height: 20px;
	border-left: hidden;
}

#inven_item_list {
	
}

#item_list_name {
	padding-top: 5px;
	padding-left: 10px;
	float: left;
	border-bottom: 1px solid #E5E5E5;
	width: 110px;
	height: 20px;
}

#item_list_content {
	padding-top: 5px;
	padding-left: 10px;
	float: left;
	border-bottom: 1px solid #E5E5E5;
	width: 390px;
	height: 20px;
}

#item_list_enddate {
	padding-top: 5px;
	padding-left: 10px;
	float: left;
	border-bottom: 1px solid #E5E5E5;
	width: 320px;
	height: 20px;
}

#pri_guide {
	padding: 10px;
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
</style>

</head>
<body>
	<jsp:useBean id="md" class="bean.memberData" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="md" />
	<jsp:useBean id="ld" class="bean.levelData" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="ld" />
	
	<%
		String id = "";
			id = (String) session.getAttribute("id");
			System.out.println(id);
			memberBean mb = new memberBean();
			memberData data = mb.view3(id);
			levelBean lb = new levelBean();
			levelData ldata = lb.viewEx(data.getNow_level());
	%>
	<div id='inventory_main'>
		<div id='pri_guide'>
			<div id=pri_guideimg>
				<img src='TopContents/mall/img_final/bag.jpg' width="50" height="38">
			</div>
			<div id=pri_guide_text>나의 오늘 활동과 라이센스, 아이템을 볼수 있습니다.</div>
		</div>
		<div id='inven_info'>
			<font size='5'>Today</font><br /> <br /> 추천
			<%=data.getGood_today()%>회(총<%=data.getGood_limit() + 10%>회)<br />포인트
			<%=data.getPoint_today()%>
			P (총
			<%=data.getPoint_limit() + 30%>포인트)<br /> 갤러리
			<%=data.getGallery_today()%>회<br /> 인포
			<%=data.getInfo_today()%>회<br /> 신고
			<%=data.getBad_today()%>회(총<%=data.getBad_limit()%>회)<br /> 
			경험치 (<%=data.getExperiencepoint()%>/
			<%=ldata.getExperiencepoint()%>)<br />
		</div>

		<div id='inven_mylicence'>라이센스</div>
		<div id='inven_licence_grade'>

			<%
				if (data.getLicence().equals("D")) {
			%>
			<img src='TopContents/mall/img_final/L_D.jpg'>
			<%
				} else if (data.getLicence().equals("C")) {
			%>
			<img src='TopContents/mall/img_final/L_C.jpg'>
			<%
				} else if (data.getLicence().equals("B")) {
			%>
			<img src='TopContents/mall/img_final/L_B.jpg'>
			<%
				} else if (data.getLicence().equals("A")) {
			%>
			<img src='TopContents/mall/img_final/L_A.jpg'>
			<%
				} else {
			%>
			<img src='TopContents/mall/img_final/L_S.jpg'>
			<%
				}
			%>
		</div>
		<div id='inven_licence_content'>
			<%
				if (data.getLicence().equals("D")) {
			%>
			추천제한<font color='#ff0000'>+0</font>, 포인트제한<font color='#ff0000'>+0</font><br />
			게시판미리보기 : <font color='#ff0000'>불가능</font><br /> 게시글 제목 특수효과 : <font
				color='#ff0000'>불가능</font><br /> 게시글 댓글 바로보기 : <font
				color='#ff0000'>불가능</font><br />
			<%
				} else if (data.getLicence().equals("C")) {
			%>
			추천제한<font color='#ff0000'>+3</font>, 포인트제한<font color='#ff0000'>+5</font><br />
			게시판미리보기 : <font color='#ff0000'>불가능</font><br /> 게시글 제목 특수효과 : <font
				color='#ff0000'>불가능</font><br /> 게시글 댓글 바로보기 : <font
				color='#ff0000'>불가능</font><br />
			<%
				} else if (data.getLicence().equals("B")) {
			%>
			추천제한<font color='#ff0000'>+5</font>, 포인트제한<font color='#ff0000'>+10</font><br />
			게시판미리보기 : <font color='#ff0000'>가능</font><br /> 게시글 제목 특수효과 : <font
				color='#ff0000'>불가능</font><br /> 게시글 댓글 바로보기 : <font
				color='#ff0000'>불가능</font><br />
			<%
				} else if (data.getLicence().equals("A")) {
			%>
			추천제한<font color='#ff0000'>+7</font>, 포인트제한<font color='#ff0000'>+15</font><br />
			게시판미리보기 : <font color='#ff0000'>가능</font><br /> 게시글 제목 특수효과 : <font
				color='#ff0000'>가능</font><br /> 게시글 댓글 바로보기 : <font color='#ff0000'>불가능</font><br />
			<%
				} else {
			%>
			추천제한<font color='#ff0000'>+9999</font>, 포인트제한<font color='#ff0000'>+9999</font><br />
			게시판미리보기 : <font color='#ff0000'>가능</font><br /> 게시글 제목 특수효과 : <font
				color='#ff0000'>가능</font><br /> 게시글 댓글 바로보기 : <font color='#ff0000'>가능</font><br />
			<%
				}
			%>
		</div>
		<div id='inven_myitem_list'>아이템</div>
		<div id='inven_item_name'>이름</div>
		<div id='inven_item_info'>설명</div>
		<div id='inven_item_enddate'>종료일</div>
		<div id='inven_item_list'>
			<div id='item_list_name'>포인트+5</div>
			<div id='item_list_content'>포인트제한을+5올려줌</div>
			<div id='item_list_enddate'>
				<font color='#ff0000'>2015.06.18일까지</font>
			</div>
		</div>
	</div>
</body>
</html>