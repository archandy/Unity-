<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='js/BoardBean9.js'></script>
<link type='text/css' rel='stylesheet' href='css/semi2joMain.css'>
<title>insert9</title>
</head>
<body>
	<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>
		<div id='listBoard'>
			<form name='frm_insert' method='post' enctype='multipart/form-data'>
				<input type='hidden' name='fid'
					value='<%=session.getAttribute("m_nick")%>'>
				<div class='insertJemokAll'>
					<div class='insertJemok'>제목</div>
					<input type='text' name='fjemok' id='insertJemokDiv'>
				</div>

				<div class='insertContentAll'>
					<div class='insertContent'>내용</div>
					<textarea id='insertContentArea' name='fcontent' rows='15'
						cols='85'></textarea>
				</div>

				<br />
				<!-- 				<input type='button' value='저장하기' id='btnSave'> -->
				<div id='fileAtt'
					style="overflow: hidden; width: 70px; height: 25px; background-image: url('imgs/boardbtn/insertImage.png');">

					<input type='file' name='fdata'
						style="width: 70px; height: 29px; margin: 0px; filter: alpha(opacity = 0); opacity: 0; cursor: pointer;">
				</div>
				<input type='button' id='btnSave'
					style="background: url('imgs/boardbtn/insertBtn.png') no-repeat 0 0; width: 70px; height: 29px; border: none;">

				<input type='button' id='btnlist'
					style="background: url('imgs/boardbtn/insertCancleBtn.png') no-repeat 0 0; width: 70px; height: 29px; border: none;">
			</form>
		</div>
	</div>

	<script>
		insert9();
	</script>

</body>
</html>