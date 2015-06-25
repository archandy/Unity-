<%@page import="bean.GalleryCommentData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="bean.GalleryCommentBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="gcb" class='bean.GalleryCommentBean' scope='page' />
	<jsp:setProperty property="*" name="gc" />

	<%
		ArrayList<GalleryCommentData> al = gcb.list();
		for(GalleryCommentData d : al)
		{
			out.print("<div id ='comment_getID2'></div>");
			out.print("<div id ='comment_getID'>"+d.getGall_comment_id()+"</div>");
			out.print("<div id ='comment_getData'>"+d.getGall_comment_mdate()+"</div>");
			out.print("<div id ='comment_HP'>추천 | 신고</div>");
			out.print("<div id ='comment_gettext'>"+d.getGall_comment_contents()+"</div>");
			out.print("<div id ='comment_comment'>댓글의 댓글▼</div>");
// 			out.print("<div class='mid'>" + d.getMid() + "</div>");
		}
	%>
</body>
</html>