<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>SLRClub</title>
<!-- 	<link href='http://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'> -->
<link href='TopContents/Gallery/js/simplelightbox.min.css'
	rel='stylesheet' type='text/css'>
<link href='TopContents/Gallery/js/demo.css' rel='stylesheet'
	type='text/css'>
<style>
html {
	background: #242424;
}

.loginPlease {
	color: white;
}

.mainTap {
	position:relative;
	top:150px;
	margin:auto;
	border: 1px solid black;
	background: #323232;
	width: 400px;
	height: 140px;
}

.Alarm {
	color: #979797;
	font-size: 95%;
	background: #2a2a2a;
	height:28px;
}

.Alarm, .BackTo {
	font-weight: bolder;
	background: #242424;
}

.Message {
	height:30px;
	position:relative;
	text-align:center;
	top:35px;
	font-size: 90%;
}

.BackTo {
	position: relative;
	top:10px;
	
}
</style>
</head>
<body>
	<%
		String loca = "TopContents/Gallery/";
		String sId = (String) session.getAttribute("id");
	%>
	<div class="container">
		<%
			if (sId == null) {
		%>
		<div class='loginPlease mainTap'>
			<div class='loginPlease Alarm'>　SLRCLUB 알림</div>
			<div class='loginPlease Message'>
				로그인 후 이용해 주세요.<p>
			<img class='loginPlease BackTo' src="imgs/Share/gall_bt_back.gif" onclick="location.href='mainSlr.jsp'">
			</div>
		</div>
		<%
			} else if (sId != null) {
		%>
		<div class="gallery">
			<a href="<%=loca%>images/image1.jpg" class="big"><img
				src="<%=loca%>images/thumbs/thumb1.jpg" alt="" title="df" /></a> <a
				href="<%=loca%>images/image2.jpg"><img
				src="<%=loca%>images/thumbs/thumb2.jpg" alt="" title="" /></a> <a
				href="<%=loca%>images/image3.jpg"><img
				src="<%=loca%>images/thumbs/thumb3.jpg" alt=""
				title="Beautiful Image" /></a> <a href="<%=loca%>images/image4.jpg"><img
				src="<%=loca%>images/thumbs/thumb4.jpg" alt="" title="" /></a>
			<div class="clear"></div>

			<a href="<%=loca%>images/image5.jpg"><img
				src="<%=loca%>images/thumbs/thumb5.jpg" alt="" title="" /></a> <a
				href="<%=loca%>images/image6.jpg"><img
				src="<%=loca%>images/thumbs/thumb6.jpg" alt="" title="" /></a> <a
				href="<%=loca%>images/image7.jpg" class="big"><img
				src="<%=loca%>images/thumbs/thumb7.jpg" alt="" title="" /></a> <a
				href="<%=loca%>images/image8.jpg"><img
				src="<%=loca%>images/thumbs/thumb8.jpg" alt="" title="" /></a>
			<div class="clear"></div>


		</div>
		<%
			}
		%>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="TopContents/Gallery/js/simple-lightbox.min.js"></script>
	<script>
		$(function() {
			var gallery = $('.gallery a').simpleLightbox();
		});
	</script>
</body>
</html>