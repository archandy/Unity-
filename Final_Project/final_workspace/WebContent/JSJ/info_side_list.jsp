<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info_SideMenu</title>
<style>
*{
	margin:0;padding:0
}
#info_side_slr, #info_side_user, #info_side_location
{
	border:1px solid black;
	width:150px;
	padding:3.9px;
	padding-left:15px;
}
#info_side_slr{
	background-color:#2222ff;
	
}
a{
	text-decoration: none;
	color:black;
}
#a_slr{
	color:white;
}
#slr{
	font-weight: bold;
}

</style>
</head>
<body>
<div id="side_wrap">
	<div id="info_side_slr">
		<font id="slr" size="2"><a id="a_slr" href='#'>SLR리뷰</a></font>
	</div>
	<div id="info_side_user">
		<font size="2"><a href='#'>유저사용기</a></font>
	</div>
	<div id="info_side_location">
		<font size="2"><a href='#'>출사정보</a></font>
	</div>
</div>
</body>
</html>