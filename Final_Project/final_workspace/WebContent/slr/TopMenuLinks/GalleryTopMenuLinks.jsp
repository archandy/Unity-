<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href='css/GalleryMainPageJQuery.css' rel='stylesheet' type='text/css'>
<script src='../js/lib/jquery-2.1.4.js'></script>
<style>
#subspan{
    color:white;
    }
    
a{
	color:#aaaaaa;
}
#sub{
background:#666666;

}
#blankGalleryMain{
  border-bottom: 1px solid #5;
}
#menu
    {
        height: 33px;
background: rgb(63,63,63);
background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzNmM2YzZiIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiMyZDJkMmQiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
background: -moz-linear-gradient(top,  rgba(63,63,63,1) 0%, rgba(45,45,45,1) 100%);
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(63,63,63,1)), color-stop(100%,rgba(45,45,45,1)));
background: -webkit-linear-gradient(top,  rgba(63,63,63,1) 0%,rgba(45,45,45,1) 100%);
background: -o-linear-gradient(top,  rgba(63,63,63,1) 0%,rgba(45,45,45,1) 100%);
background: -ms-linear-gradient(top,  rgba(63,63,63,1) 0%,rgba(45,45,45,1) 100%);
background: linear-gradient(to bottom,  rgba(63,63,63,1) 0%,rgba(45,45,45,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3f3f3f', endColorstr='#2d2d2d',GradientType=0 );
 }
</style>
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
			
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Information/info_list.jsp'>SLR리뷰</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Information/gesipan_list.html'>유저사용기</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Information/gesipan_list.html'>출사정보</a></div>")
			},
		
				//원상복구
		function() {
			$('#information')
				.html(
					"<div id='subspan'>INFORMATION</div>");
				});
		});
///////////////////////////////AJAX
var xhr;
var message="";

function init(){
	//1) XMLHttpRequest 객체 생성
	if(window.ActiveXObject){//현재 브라우저의 ActiveX가 존재한다면(IE계열)
		xhr = new ActiveXObject("Msxml2.XMLHTTP");//microsoftXml2.XMLHttp
		
	}
	else if(window.XMLHttpRequest){//표준브라우저(W3C계열)
		xhr = new XMLHttpRequest();
	
	}
	
	document.getElementById("tit2").onclick=function(){
		xhr.onreadystatechange=loadInfoProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("post", "icon_test.html");	//true, id pwd값 생략
		xhr.send();
	}
	//99단 처리 onclick event
	document.getElementById("gugudan").onclick=function(){
		xhr.onreadystatechange=gugudanProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
		//계속 바뀐다면 처리해달라.
		xhr.open("POST", "gugudan.jsp?dan=3");	//true, id pwd값 생략
		xhr.send();
	}
	//2) 생성 결과를 div영역에 표시
	
}
function loadInfoProcess(){
	//message += xhr.status + "," + xhr.readyState + "<br/>";
	if(xhr.status==200 && xhr.readyState==4){//200 & 4가 데이터 정상수신
		var rs = document.getElementById("result");
		rs.innerHTML = xhr.responseText;//읽어드리는 data타입. responseText
	}
}
function gugudanProcess(){
	if(xhr.status==200 && xhr.readyState==4){
		var rs = document.getElementById("result");
		rs.innerHTML = xhr.responseText;
	}
}
////////////////////////////
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
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/mall/main_buy.jsp'>상점</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/mall/main_inven.jsp'>인벤토리</a></div>"+
			"<div id='subMenuHover'><a href='mainSlr.jsp?content=TopContents/Mypage/main_pri.jsp'>내 정보 보기</a></div>")
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
	
			
<script>init();</script>
</body>
</html>