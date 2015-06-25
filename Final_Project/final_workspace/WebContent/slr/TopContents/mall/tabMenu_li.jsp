<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#mall_tabmenu_all {
	padding-top: 5px;
	text-align: center;
	border: 1px solid #CFDAE3;
	width: 100px;
	height: 17px;
	float: left;
	background-color: #F3F3F3;
	color: #888888;
	font-weight: bold;
	font-family: '돋움';
	font-size:12px;	
}

#mall_tabmenu_licence {
	padding-top: 5px;
	text-align: center; 
	border : 1px solid #CFDAE3;
	width: 130px;
	height: 17px;
	float: left;
	font-weight: bold;
	font-family: '돋움';
	font-size:12px;
	margin-left: 1px;
}

#mall_tabmenu_good {
	padding-top: 5px;
	text-align: center;
	border: 1px solid #CFDAE3;
	width: 150px;
	height: 17px;
	float: left;
	margin-left: 1px;
	background-color: #F3F3F3;
	color: #888888;
	font-weight: bold;
	font-family: '돋움';
	font-size:12px;	
}

#mall_tabmenu_point {
	padding-top: 5px;
	text-align: center;
	border: 1px solid #CFDAE3;
	width: 150px;
	height: 17px;
	float: left;
	margin-left: 1px;
	background-color: #F3F3F3;
	color: #888888;
	font-weight: bold;
	font-family: '돋움';
	font-size:12px;
}
#mall_tabmenu{
	float:right;
	width:850px;
	height:23px;
	border-bottom: 1px solid #CFDAE3;
}
#pri_guide {
	padding: 10px;
	margin-top: 33px;
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
	<div id='mall_tabmenu'>
		<a href='mainSlr.jsp?content=TopContents/mall/main_buy.jsp'><div
				id='mall_tabmenu_all'>전체</div></a> <a
			href='mainSlr.jsp?content=TopContents/mall/main_buy2.jsp'><div
				id='mall_tabmenu_licence'>라이센스</div></a> <a
			href='mainSlr.jsp?content=TopContents/mall/main_buy3.jsp'><div
				id='mall_tabmenu_good'>추천아이템</div></a> <a
			href='mainSlr.jsp?content=TopContents/mall/main_buy4.jsp'><div
				id='mall_tabmenu_point'>포인트아이템</div></a>
		<div id='list'></div>
	</div>
	<div id='pri_guide'>
		<div id=pri_guideimg>
			<img src='TopContents/mall/img_final/bag.jpg' width="50" height="38">
		</div>
		<div id=pri_guide_text>아이템과 라이센스를 구입할 수 있습니다.</div>
	</div>
</body>
</html>