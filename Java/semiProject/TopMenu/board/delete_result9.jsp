<%@page import="semiBean.BoardBean9"%>
<%@page import="semiBean.BoardData9"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='js/BoardBean9.js'></script>
<title>delete_result9</title>
</head>
<body>
	<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>

		<div id='listBoard'>
			<jsp:useBean id="d" class='semiBean.BoardData9' scope='page' />
			<jsp:setProperty property="*" name="d" />
			<%
				BoardBean9 sb = new BoardBean9();
				System.out.println("delete.jsp에"
						+ request.getParameter("oldpicture"));
				int r = sb.delete(d.getFrno(), request.getParameter("oldpicture"));
				if (r > 0)
					out.print("정상 삭제됨.");
				else
					out.print("삭제중 오류 발생..");
			%>
			<form name='d_update' method='post'>
				<input type='button' value='목록으로' id='btnlist'>
			</form>
		</div>
	</div>
	<script>
		f1_update();
	</script>

</body>
</html>