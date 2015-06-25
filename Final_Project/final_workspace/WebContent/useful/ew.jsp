<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>팝업레이어</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	function doLayerPopup(v) {
		var layerPopupFull = document.getElementById("layerPopupFull");
		var layerPopup = document.getElementById("layerPopup");

		if (v == "show") {
			layerPopupFull.style.display = "";
			layerPopup.style.display = "";
		} else {
			layerPopupFull.style.display = "none";
			layerPopup.style.display = "none";
		}
	}
</script>
<style>
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

</head>
<body>
	<div id="layerPopupFull"
		style="position: absolute; z-index: 9; width: 100%; height: 100%; left: 0px; top: 0px; display: none; background-color: white; filter: alpha(opacity = 60); opacity: .6;">
		<!-- 페이지전체영역입니다. -->
	</div>
	<div id="layerPopup"
		style="position: absolute; z-index: 10; width: 255px; height: 155px; left: 50px; top: 50px; display: none; background-color: #ffffff;">
		<div id="lo_main">
			<div id="x_icon">
				<img src="bt_close.gif" onclick="doLayerPopup('hide')">
			</div>
			<div id="log_in1">로그인</div>
			<div id="bbzx">
				<div id="log_in2">
					<input type="text" name="lo_lo" size="13" style="height: 20px;">
				</div>

				<div id="log_in3">
					<input type="text" name="lo_lo2" size="13" style="height: 20px;">
				</div>
			</div>
			<div id="log_in4">
				<img src="bt_login.gif">
			</div>




		</div>
		
	</div>


	<button type="button" onclick="doLayerPopup('show')">팝업보기</button>
	
</body>
</html>