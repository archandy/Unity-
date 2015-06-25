<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
$('#fall').popup({
        beforeopen: function () {
            alert('beforeopen');
        },
        onopen: function () {
            alert('onopen');
        },
        onclose: function () {
            alert('onclose');
        },
        opentransitionend: function () {
            alert('opentransitionend');
        },
        closetransitionend: function () {
            alert('closetransitionend');
        }
    });
</script>
</head>
<body>

<div id="fall">
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