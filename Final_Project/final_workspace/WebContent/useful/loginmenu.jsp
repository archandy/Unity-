<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#lo_main {
	
	border: 3px solid #519CE0;
	width: 250px;
	height: 150px;
	color: #333;
	font-size: 12px;
	line-height: 18px;
	font-family: "돋움"
}

#log_in1 {
	margin-top: 20px;
	margin-left: 15px;
	font-weight: 800;
	border-bottom: 1px solid #519CE0;
	width: 210px;
	height: 30px;
}

#bbzx, #log_in4 {
	display: inline-block;
}
#bbzx{
	vertical-align:top;
	margin-left: 15px;
	margin-top: 10px;
}
#log_in4{
	margin-top: 10px;
}
#log_in3{
	margin-top: 4px;
}
#x_icon{
	float:right;
}
</style>
</head>

<body>
	<div id="lo_main">
		<div id="x_icon">
			<img src="img/bt_close.gif">
		</div>
		<div id="log_in1">로그인</div>
		<div id="bbzx">
			<div id="log_in2">
				<input type="text" name="lo_lo" size="13" style="height:20px;">
			</div>

			<div id="log_in3">
				<input type="text" name="lo_lo2" size="13" style="height:20px;">
			</div>
		</div>
		<div id="log_in4">
			<img src="img/bt_login.gif">
		</div>




	</div>
</body>
</html>