<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reply</title>
<script src='js/BoardBean9.js'></script>
</head>
<body>
	<jsp:useBean id="d" class='semiBean.BoardData9' scope='page' />
	<jsp:setProperty property="*" name="d" />
	<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>
		<div id='listBoard'>
			<form name='reply' method='post'
				action='semi2joMain.jsp?content=TopMenu/board/reply_result.jsp'>
				<input type='hidden' name='fid'
					value='<%=session.getAttribute("m_nick")%>'>
				<div class='insertJemokAll'>
					<div class='insertJemok'>제목</div>
					<input type='text' name='fjemok' id='insertJemokDiv' value='[re] <%=session.getAttribute("fjemok")%> '>
				</div>

				<div class='insertContentAll'>
					<div class='insertContent'>내용</div>
					<textarea id='insertContentArea' name='fcontent' rows='15'
						cols='85'></textarea>
				</div>
				<br> <input type="image" src='imgs/boardbtn/insertBtn.png'
					value='답변저장' id='btnreply'> <input type='button'
					id='btnlist'
					style="background: url('imgs/boardbtn/insertCancleBtn.png') no-repeat 0 0; width: 70px; height: 29px; border: none;">




				<input type='hidden' name='grp' value='<%=d.getGrp()%>'> <input
					type='hidden' name='deep' value='<%=d.getDeep()%>'>
			</form>
		</div>




	</div>
	</form>
	<script>
		rep();
	</script>
</body>
</html>