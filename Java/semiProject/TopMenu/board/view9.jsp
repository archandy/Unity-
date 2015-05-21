<%@page import="semiBean.BoardData9"%>
<%@page import="semiBean.BoardBean9"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view9</title>
<script src='js/BoardBean9.js'></script>
</head>
<body>
	<jsp:useBean id="d" class='semiBean.BoardData9' scope='page' />
	<jsp:setProperty property="*" name="d" />

	<%
		
		BoardBean9 sb = new BoardBean9();
		BoardData9 data = sb.view(d.getFrno());
		session.setAttribute("fjemok", data.getFjemok());
	%>


	<div id='mainCenterRealFreeboard'>
		<div class='freeboard'>자유게시판</div>

		<div id='listBoard'>
			<div class='viewJemokAll'>
				<div class='viewJemok'>제목</div><font size="4"><%=data.getFjemok()%></font>
			</div>
			<div class='viewFidAll'>
				<div class='viewFid'>작성자</div>
				<div class='viewGetFid'><%=data.getFid()%></div>
				<div class='viewFmdate'>작성일</div>
				<div class='viewGetFmdate'><%=data.getFmdate()%></div>
			</div>

			<div id='addiv'>
				<img src='../board/imgs/1.png'><a
					href='http://www.jhta.co.kr/'
					style='color: #ea9800; text-decoration: none;'>★자바강좌★ 자바수강
					바로가기- 한번 클릭해보세요!</a>
			</div>
			<div class='viewFcontent'>
				<%
					if (data.getFdata() != null) {
				%>
				<img src='imgs/upload/<%=data.getFdata()%>'>
				<%
					}
				%>

				<p />
				<%=data.getFcontent()%>
			</div>


			<div id='btnzone'>
			<form name='frm_view' method='post'>
			<%System.out.println("세션에저장된 nick = "+session.getAttribute("m_nick")); %>
			<% 
			String flag = (session.getAttribute("m_nick"))+"";
// 			if(session.getAttribute("m_nick")!=null
			if(flag.equals(data.getFid()))
				{%>
				<img src='imgs/boardbtn/modifybtn.png' id='btnupdate'>
				<img src='imgs/boardbtn/deletebtn.png' id='btndelete'>
				<%;}%>
				<img src='imgs/boardbtn/replybtn.png' id='btnreply'>
				<img src='imgs/boardbtn/goBackList.png' id='btnlist'>
				
				<input type='hidden' name='frno' value='<%=data.getFrno()%>'>
				<input type='hidden' name='oldpicture' value='<%=data.getFdata()%>'>
				<input type='hidden' name='grp' value='<%=data.getGrp()%>'>
				<input type='hidden' name='deep' value='<%=data.getDeep()%>'>
			</form>
			</div>
		</div>
	</div>
	<script>
		view1();
	</script>
</body>
</html>