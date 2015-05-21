<%@page import="semiBean.comeonArsenalData"%>
<%@page import="semiBean.comeonArsenalBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='http://maps.google.com/maps/api/js?sensor=true'></script>
<script>
	function Init() {
		// 		homeRtn;
		document.getElementById('btnhome').onclick = homeRtn;
		document.getElementById('btnoffice').onclick = officeRtn;
	}

	function homeRtn() {
		var lat = 51.554948;//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ위도
		var lng = -0.108437;//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ경도
		makeMap(lat, lng);
	}

	function officeRtn() {
		var url = "https://www.google.com/maps/place/Emirates+Stadium/@51.5519885,-0.1021314,377a,20y,308.44h,54.77t/data=!3m1!1e3!4m2!3m1!1s0x0000000000000000:0x3600713c8382cf90!6m1!1e1?hl=en";
		window.open(url, '회원정보', ' width=1000 height=700');

	}

	function makeMap(lat, lng) {
		//-------------------------------------http://mygeoposition.com/ 에서 위도/경도 좌표를 복붙하자
		var map_div = document.getElementById('map_div'); //------지도 표시div
		// 		window.open(url, '회원정보', ' width=1000 height=700');

		var latlng = new google.maps.LatLng(lat, lng);//좌표값이 떨어졋음
		var map = new google.maps.Map(//ㅡㅡㅡㅡㅡㅡㅡㅡ맵이란걸 표시해주기위해 이까지가 이제 기초작업
		map_div, {
			zoom : 16,//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ띄워졌을때 줌 레벨
			center : latlng,//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ어디를 중앙으로 둘것인지
			mapTypeId : google.maps.MapTypeId.ROADMAP
		});
		var marker = new google.maps.Marker({
			position : latlng,
			map : map,
			title : 'Emirates Stadium'
		})

	}

	function gallery_hide() {
		document.getElementById('gallery_thump').innerHTML = ''
	}

	function gallery_xy() {
		document.getElementById("gallery_thump").style.left = event.clientX
				+ document.body.scrollLeft + 15 + "px";
		document.getElementById("gallery_thump").style.top = event.clientY
				+ document.body.scrollTop + 5 + "px";

	} //갤러리명 onmousemove시 대문 이미지 좌표 이동

	function gallery_view() {
		var text;
		text = '<div class="thumb_gif">';
		text += '<img src="imgs/comeonArsenal/emiratesgif.gif" width=180 height=120></div>';
		document.getElementById('gallery_thump').innerHTML = text;
	}//갤러리 대문 스크립트
</script>
<title>Map</title>
</head>
<body onload="homeRtn()">
	<div id='mainCenter'>
		<div id='mainCenterTicketTop'>
			<div id='mainCenterTopNewsPic'>
				<img src="imgs/comeonArsenal/Arsenal_small.png" width="450px"
					height="274px">
			</div>
			<div id='mainCenterTopNewsTxt'>
				<font style="font-size: 30px; font-weight: bold;">
					</p>Arsenal을 만나보세요
				</font>
				<hr>
				<font size='2'>에미레이트 스타디움 에 도착 하는 것은 간단합니다. <br> 런던 의
					광범위한 대중 교통 네트워크는 보행자 역 또는 버스 정류장 에서 자신의 길을 찾는 데 도움이됩니다. <br> 몇
					분 지상 의 거리에 명확하게 있는 징후 내에서 당신을 데려 갈 것이다 .<br> 경기장은 서로 다른 영역 을
					의미하는 컬러 코딩 시스템 을 보유하고 있습니다. <br> 방문 관중 이 경기장 의 남쪽 동쪽 , 녹색 사분면
					에 위치 유의하시기 바랍니다.
				</font>
				<p />
				<div class='dash'></div>

			</div>

		</div>
		<div id='mainCenterRealComeon'>

			<jsp:useBean id="ad" class='semiBean.comeonArsenalData' scope='page' />
			<jsp:setProperty property="*" name="ad" />
			<%
				comeonArsenalBean sb = new comeonArsenalBean();
				comeonArsenalData data = sb.view();
			%>
			<div id='stadiumDesc'>
				<div id='comeonPic'>
					<img src='imgs/comeonArsenal/<%=data.getLogopng()%>'>
				</div>
				<div id='stadiumdescall'>
					<div class='stadiumDescLeft3dView'>
						<a href='#' id='btnoffice' style="color: black"
							onmousemove="gallery_xy();" 
							onmouseover="gallery_view();"
							onmouseout="gallery_hide();">홈구장 3D모델링</a>
					</div>
					<div class='stadiumDescRight'><%=data.getStadiumname()%></div>
					<div class='stadiumDescLeft'>이름</div>
					<div class='stadiumDescRight'><%=data.getOwn()%></div>
					<div class='stadiumDescLeft'>소유팀</div>
					<div class='stadiumDescRight'><%=data.getOpendate()%></div>
					<div class='stadiumDescLeft'>개장일</div>
					<div class='stadiumDescRight'><%=data.getCoordinate()%></div>
					<div class='stadiumDescLeft'>좌표</div>
					<div class='stadiumDescRight'><%=data.getLocation()%></div>
					<div class='stadiumDescLeft'>위치</div>
					<div class='stadiumDescRight'><%=data.getCapacity()%></div>
					<div class='stadiumDescLeft'>수용인원</div>
					<div class='stadiumDescRight'><%=data.getConstructioncost()%></div>
					<div class='stadiumDescLeft'>건설비용</div>
					<div class='stadiumDescRight'><%=data.getFieldsize()%></div>
					<div class='stadiumDescLeft'>규모</div>
				</div>
			</div>
			<p>
			<div id='map_div' style="width: 550px; height: 580px"></div>
			<input type='hidden' value='home' id='btnhome'>

			<!-- 				썸네일보여질곳 -->
			<label> </label>
			<!-- 				썸네일보여질DIV -->
			<div id="gallery_thump"
				style="border-width: 0px; border-style: none; width: 0px; height: 14px; position: absolute; left: 96px; top: 28px; z-index: 9;">
			</div>
		</div>
	</div>


	<script>
		Init();
	</script>

</body>
</html>