<%@page import="bean.GalleryBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script src='js/GalleryJS/Gallery.js'></script> -->
<script>
function init(){
	alert("갤딜리트 들어옴!~~");
}
</script>
</head>
<body>
			<jsp:useBean id="d" class='bean.GalleryData' scope='page' />
			<jsp:setProperty property="*" name="d" />
			<%
				String oldPic = (String)session.getAttribute("picName");
				GalleryBean sb = new GalleryBean();
				int frno = (int)((session.getAttribute("frno")));
				System.out.println("jsp에서 frno는?뭐지?"+frno);
				int r = sb.delete(frno, oldPic);
				if (r > 0)
					out.print("정상 삭제됨.");
				else
					out.print("삭제중 오류 발생..");
			%>
			<script>init();</script>
</body>
</html>