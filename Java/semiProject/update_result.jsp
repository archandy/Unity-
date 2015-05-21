<%@page import="semiBean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sd" class='semiBean.MemberData' scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="sd"/>
	
<% 

		try{
	
		MemberBean fn = new MemberBean();
		
			int r = fn.update(sd);
			if (r > 0) {
				out.print("정상적으로 수정되었습니다..");
			} else {
				out.print("저장중 오류 발생...");
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	%>
	


	<script>
		update();
	</script>
</body>
</html>