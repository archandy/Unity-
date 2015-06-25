<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.itemData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Item list</title>
<style>
#main_list_item {
	/* 	border: 1px solid #B3B3B3; */
	width: 850px;
	height: 350px;
/* 	padding-top: 30px; */
	float: right;
}

#list_item {
	border: 1px solid #B3B3B3;
	padding: 20px;
	width: 330px;
	height: 140px;
	background-color: #F0F0F0;
	float:left;
	margin:25px;
}

#item_img {
	border: 1px solid #B3B3B3;
	text-align: center;
	float: left;
	font-size: 70px;
	width: 100px;
	height: 100px;
}

#item_contents {
	/* 	border: 1px solid #B3B3B3; */
	float: left;
	margin-left: 20px;
	width: 200px;
	font-family: '돋움';
	font-size: 12px;
}

#item_name {
	/* 	border: 1px solid #B3B3B3; */
	padding: 10px;
	width: 150px;
	font-size: 18px;
	font-weight: bold;
/* 	background-color: #0275E0; */
	color: #0275E0;
}

#item_price {
	/* 	border: 1px solid #B3B3B3; */
	padding: 10px;
}

#item_licencelimit {
	/* 	border: 1px solid #B3B3B3; */
	padding: 10px;
}

#item_levellimit {
	/* 	border: 1px solid #B3B3B3; */
	padding: 10px;
}

#page_list {
	clear:both;
	border-top: 1px solid #E5E5E5;
	text-align: center;
	margin-top: 15px;
	padding: 5px;
	font-weight: bold;
	font-family: '돋움';
	font-size: 12px;
}

#item_search {
	/* 	border: 1px solid #B3B3B3; */
	margin-top: 15px;
	float: right;
	width: 215px;
	height: 30px;
}

#text_search {
	float: left;
}

#btn_search {
	float: left;
}
</style>

<script src='Score.js'></script>
</head>
<body>
	<jsp:useBean id="ib" class='bean.itemBean' scope='page' />
	<jsp:setProperty property="*" name="ib" />
	<div id='main_list_item'>
		<%
// 			if (request.getMethod().equals("POST")) {
				ArrayList<itemData> al = ib.listPo();
				for (itemData d : al) {
		%>
		<div id='list_item'>
			<div id='item_img'><img src='TopContents/mall/img_final/<%=d.getImgName()%>'></div>
			<div id='item_contents'>
				<a href='#' onclick="goView('<%=d.getMid()%>')"><div
						id='item_name'>321321312</div></a>
				<div id='item_price'>
					가격 <font color='#ff0000'><%=d.getBuyPoint() %> P</font>
				</div>
				<div id='item_levellimit'>
					레벨 <font color='#ff0000'><%=d.getLevelLimit() %></font>이상
				</div>
				<div id='item_licencelimit'>
					<font color='#ff0000'><%=d.getLicenceLimit() %></font>급 라이센스 필요
				</div>
			</div>
		</div> 
		<%
			}
// 			}
		%>
		<div id='page_list'>1</div>
<!-- 		<div id='item_search'> -->
<!-- 			<div id='text_search'> -->
<!-- 				<input type='text'> -->
<!-- 			</div> -->
<!-- 			<div id='btn_search'> -->
<!-- 				<input type='submit' value='검색' id='search_btn'> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
</body>
</html>