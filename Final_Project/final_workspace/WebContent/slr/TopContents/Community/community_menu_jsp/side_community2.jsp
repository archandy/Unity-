<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info_SideMenu</title>
<link rel='stylesheet' href='TopContents/Community/community_menu_jsp/css/side_community1.css' type='text/css'>
<style>
#info_side_photo{
background: rgb(122,188,255); /* Old browsers */
background: -moz-radial-gradient(top, ellipse cover,  rgba(122,188,255,1) 0%, rgba(96,171,248,1) 44%, rgba(49,143,237,1) 100%); /* FF3.6+ */
background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%,rgba(122,188,255,1)), color-stop(44%,rgba(96,171,248,1)), color-stop(100%,rgba(49,143,237,1))); /* Chrome,Safari4+ */
background: -webkit-radial-gradient(center, ellipse cover,  rgba(122,188,255,1) 0%,rgba(96,171,248,1) 44%,rgba(49,43,217,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-radial-gradient(top, ellipse cover,  rgb(77, 160, 236) 0%,rgb(55, 144, 234) 44%,rgb(28, 127, 217) 100%); /* Opera 12+ */
background: -ms-radial-gradient(top, ellipse cover,  rgb(77, 160, 236) 0%,rgb(55, 144, 234) 44%,rgb(28, 127, 217) 100%); /* IE10+ */
background: radial-gradient(ellipse at top,  rgb(77, 160, 236) 0%,rgb(55, 144, 234) 44%,rgb(28, 127, 217) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff', endColorstr='#318fed',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
}

#b_slr{
	color:white;
}
</style>
</head>
<body>
<div id="side_wrap">
	<div id="info_side_community">
		<font ><a href='mainSlr.jsp?content=TopContents/Community/community_free_list.jsp'>자유게시판</a></font>
	</div>
	<div id="info_side_photo">
		<a id="b_slr" href='mainSlr.jsp?content=TopContents/Community/community_photo_list.jsp'><font id="slr">포토스트림</font></a>
	</div>
	<div id="info_side_down">
		<font ><a href='mainSlr.jsp?content=TopContents/Community/community_menu_jsp/side_community3.jsp'>자료실</a></font>
	</div>
	<div id="info_side_adult">
		<font ><a href='mainSlr.jsp?content=TopContents/Community/community_menu_jsp/side_community4.jsp'>성인게시판</a></font>
	</div>
</div>
</body>
</html>