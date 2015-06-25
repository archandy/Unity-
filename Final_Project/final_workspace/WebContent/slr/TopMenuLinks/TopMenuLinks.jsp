<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src ="./TopContents/Information/gesipan_list.js"></script>
<title>Insert title here</title>
<style>
#log_in4,#log_in5,#log_in6{
	font-size: small;
}
#log_in5,#log_in6{
	border-right:2px solid #aabbcc;
	margin-right: 7px;
	padding-right: 8px;
}
.login999:HOVER{
text-decoration:underline;
}

#lo_main2 {
	
	border: 3px solid #519CE0;
	width: 250px;
	height: 150px;
	color: #333;
	font-size: 12px;
	line-height: 18px;
	font-family: "돋움"
}

#log_in12 {
	margin-top: 20px;
	margin-left: 15px;
	font-weight: 800;
	border-bottom: 1px solid #519CE0;
	width: 210px;
	height: 30px;
}

#bbzx, #log_in42{
	display: inline-block;
}
#bbzx{
	vertical-align:top;
	margin-left: 15px;
	margin-top: 10px;
}
#log_in42{
	margin-top: 10px;
}
#log_in32{
	margin-top: 4px;
}
#x_icon{
	float:right;
}
</style>
<link href='css/MainPageJQuery.css' rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src='./js/lib/jquery-2.1.4.js'></script>
<script>
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ커뮤니티 */
$(document).ready(function() 
		{//마우스오버

		$('#community').hover(function() 
				{
			$('#community').html(
					"<div id='sub'><div id='subspan'>COMMUNITY</span></div>"+
					"<div id='subMenu'><div id='subMenuBlank'></div>"+
					
					"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Community/community_free_list.jsp'>자유게시판</a></div>"+
					"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Community/community_photo_list.jsp'>포토스트림</a></div>"+
					"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Community/community_free_list.jsp'>자료실</a></div>"+
					"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Community/community_free_list.jsp'>성인게시판</a></div>")
				},
		
				//원상복구
		function() {
			$('#community')
				.html(
					"<div id='subspan'>COMMUNITY</div>");
				});
		})
 
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ인포 */
$(document).ready(function() 
		{//마우스오버
		$('#information').hover(function() 
				{
			$('#information').html(
					"<div id='sub'><div id='subspan'>INFORMATION</span></div>"+
			"<div id='subMenu'><div id='subMenuBlank'></div>"+
			
			"<div id='subMenuHover'><a id='info_1' href='mainSlr.jsp?content=TopContents/Information/info_list.jsp&grno=1' onclick='info_g1()'>SLR리뷰</a></div>"+
			"<div id='subMenuHover'><a id='info_2' href='javascript:info_g2();'>유저사용기</a></div>"+
			"<div id='subMenuHover'><a id='info_3' href='mainSlr.jsp?content=TopContents/Information/info_list.jsp&grno=3' onclick='info_g3()'>출사정보</a></div>")
			},
		
				//원상복구
		function() {
			$('#information')
				.html(
					"<div id='subspan'>INFORMATION</div>");
				});
		});
///////////////////////////////AJAX

/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ갤러리 */
$(document).ready(function() 
		{//마우스오버
		$('#gallery').hover(function() 
				{
			$('#gallery').html(
					"<div id='sub'><div id='subspan'>GALLERY</span></div>"+
			"<div id='subMenu'><div id='subMenuBlank'></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Gallery/TodayGallery.jsp'>오늘의사진</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Gallery/ProGallery.jsp'>작가갤러리</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Gallery/ArtGallery.jsp'>작품갤러리</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Gallery/StudyGallery.jsp'>습작갤러리</a></div>")
				},
				//원상복구
		function() {
			$('#gallery')
				.html(
					"<div id='subspan'>GALLERY</div>");
				});
		})
		
		
		
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ마켓 */
$(document).ready(function() 
		{//마우스오버
		$('#market').hover(function() 
				{
			$('#market').html(
					"<div id='sub'><div id='subspan'>MARKET</span></div>"+
			"<div id='subMenu'><div id='subMenuBlank'></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Market/market_list.jsp'>팝니다</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Market/market_list2.jsp'>삽니다</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Market/market_list3.jsp'>사기꾼 게시판</a></div>")
				},
		
				//원상복구
		function() {
			$('#market')
				.html(
					"<div id='subspan'>MARKET</div>");
				});
		})
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ몰 */
$(document).ready(function() 
		{//마우스오버
		$('#mall').hover(function() 
				{
			$('#mall').html(
					"<div id='sub'><div id='subspan'>MALL</span></div>"+
			"<div id='subMenu'><div id='subMenuBlank'></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/mall/main_buy.jsp'>상점</a></div>")
// 			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/mall/main_inven.jsp'>인벤토리</a></div>"+
//  	"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Mypage/main_pri.jsp'>내 정보 보기</a></div>")
				},

				//원상복구
		function() {
			$('#mall')
				.html(
					"<div id='subspan'>MALL</div>");
				});
		})
		
		


</script>
</head>
<body>
	<div id='menu'>
		<div id='community'>
			<div id='subspan'>COMMUNITY</div>
		</div>
		<div id='information'>
			<div id='subspan'>INFORMATION</div>
		</div>
		<div id='gallery'>
			<div id='subspan'>GALLERY</div>
		</div>
		<div id='market'>
			<div id='subspan'>MARKET</div>
		</div>
		<div id='mall'>
			<div id='subspan'>MALL</div>
		</div>

	</div>



</body>
</html>