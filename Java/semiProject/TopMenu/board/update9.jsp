<%@page import="semiBean.BoardData9"%>
<%@page import="semiBean.BoardBean9"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
<!-- <script src='js/BoardBean9.js'></script> -->
</head>
<body>

<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>
		<div id='listBoard'>
	
<jsp:useBean id="d" class='semiBean.BoardData9' scope='page'/>
<jsp:setProperty property="*" name="d"/>
<%
BoardBean9 sb = new BoardBean9();
BoardData9 sd = sb.view(d.getFrno());
%>
<form name='frm_update' method='post' enctype='multipart/form-data'>
	<input type='hidden' name='fid'
					value='<%=session.getAttribute("m_nick")%>'>
	<div class='insertJemokAll'>
					<div class='insertJemok'>제목</div>
					<input type='text' name='fjemok' id='insertJemokDiv' value='<%=sd.getFjemok() %>'>
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
				<input type='button' id='fbtnappend'
					style="background: url('imgs/boardbtn/insertBtn.png') no-repeat 0 0; width: 70px; height: 29px; border: none;">

				<input type='button' id='btnlist'
					style="background: url('imgs/boardbtn/insertCancleBtn.png') no-repeat 0 0; width: 70px; height: 29px; border: none;">
				<input type='hidden' name='frno' value='<%=sd.getFrno()%>'><br/>
			</form>
		</div>
	</div>
				
				
<!-- 	<input type='file' name='fdata'> -->
<!-- 	<input type='submit' id='fbtnappend' value='수정하기'> -->
<!-- 	<input type='button' value='목록으로' id='btnlist'> -->
<%-- 	<input type='hidden' name='oldPicture' value="<%=sd.getFdata()%>"> --%>
<!-- </form> -->

<script>fupdate();</script>


<%-- <label>제목</label><input type='text' name='fjemok' value='<%=sd.getFjemok() %>'><br/>	 --%>
<!-- <label>내용</label><textarea name='fcontent' rows='10' cols='50'></textarea><br/> -->
</body>
</html>