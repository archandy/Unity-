<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="semiBean.BoardBean9"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update_result</title>
<script src='js/BoardBean9.js'></script>
</head>
<body>
	<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>

		<div id='listBoard'>
			<%
				String uploadPath = "C:/Dropbox/workspace/web/WebContent/upload/";
				MultipartRequest multi = null;
				int size = 10 * 1024 * 1024;

				try {
					multi = new MultipartRequest(request, uploadPath, size,
							"utf-8", new DefaultFileRenamePolicy());

					BoardBean9 fn = new BoardBean9();
					fn.setMulti(multi);

					int r = fn.update();
					//키인 할려고 확인
					if (r > 0) {
						out.print("정상적으로 입력되었습니다.");
					} else {
						out.print("저장중 오류 발생...");
					}
				} catch (Exception ex) {

				}
			%>

			<form name='frm_update' method='post'>
				<input type='button' value='목록으로' id='btnlist'>
			</form>
		</div>
	</div>
	<script>
		f_update();
	</script>

</body>
</html>