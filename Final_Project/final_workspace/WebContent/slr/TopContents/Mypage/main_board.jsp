<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mall</title>

<style>
#mall_main_inven{
	width:1000px;
	height:500px;
}
#middle_buy {
	height:500px;
	width: 1000px;
}

#left_buy {
	height:500px;
	width: 140px;
	float: left;
}

#center_buy {
	height:500px;
	width: 850px;
	float:right;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String menu = "leftMenu_board.jsp";
		String content = "board_pri.jsp";
		String tab = "tabMenu_all.jsp";
// 		if (request.getParameter("content") != null) {
// 			content = request.getParameter("content");
// 		}
	%>
	<div id='mall_main_inven'>
		<div id='middle_buy'>
			<div id='left_buy'>
				<jsp:include page="<%=menu%>"></jsp:include>
			</div>
			<div id='top'>
			</div>
			<div id='center_buy'>
				<jsp:include page="<%=tab%>"></jsp:include>
				<jsp:include page="<%=content%>"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>