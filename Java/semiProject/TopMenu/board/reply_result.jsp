<%@page import="semiBean.BoardBean9"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답변 확인</title>
<script src='js/BoardBean9.js'></script>
</head>
<body>
	<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>

		<div id='listBoard'>
			<jsp:useBean id="d" class='semiBean.BoardData9' scope='page' />
			<jsp:setProperty property="*" name="d" />

			<%
				BoardBean9 bb = new BoardBean9();
				int r = bb.reple(d);

				if (r > 0)
					out.print("저장됨");
				else
					out.print("저장 중 오류발생");
			%>
			<p />
			<form name='frm_rep' method='post'>
				<input type='button' value='목록으로' id='btnlist'>
			</form>
		</div>
	</div>
	<script>
		rep();
	</script>
</body>

</html>