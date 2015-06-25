<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#mem_left_menu{margin:auto;width:175px;font-family: '돋움';
	font-size:12px;}
#mem_member_my{
	padding-top:5px;
	width:130px;
	height:24px;
	
}
#mem_member_pri{

	padding-left:10px;
	padding-top:5px;
	border-bottom:1px solid #CFDAE3;
	width:130px;
	height:20px;
	color:#676767;	
	
}
#mem_member_board{
	padding-left:10px;
	padding-top:5px;
	border-bottom:1px solid #CFDAE3;
	width:130px;
	height:20px;
	color:#676767;
	
}
#mem_member_tra{
	background-color:#5187C5;
	color:#ffffff;
	padding-left:10px;
	padding-top:5px;
	border-bottom:1px solid #CFDAE3;
	width:130px;
	height:20px;
	font-weight: bold;
	
		
}
#mem_member_tal{
	padding-left:10px;
	padding-top:5px;
	border-bottom:1px solid #CFDAE3;
	width:130px;
	height:20px;
	color:#676767;
	
}
</style>
</head>
<body>
	<div id='mem_left_menu'>
		<div id='mem_member_my'>
			<img src='TopContents/Mypage/mem_img/mypage_tt.gif'>
		</div>
		<a href='mainSlr.jsp?content=TopContents/Mypage/main_pri.jsp'>
			<div id='mem_member_pri'>개인정보</div>
		</a> <a href='mainSlr.jsp?content=TopContents/Mypage/main_board.jsp'>
			<div id='mem_member_board'>내게시물</div>
		</a> <a href='mainSlr.jsp?content=TopContents/Mypage/main_tra.jsp'>
			<div id='mem_member_tra'>거래현황</div>
		</a> <a href='mainSlr.jsp?content=TopContents/Mypage/main_tal.jsp'>
			<div id='mem_member_tal'>회원탈퇴</div>
		</a>
	</div>
</body>
</html>