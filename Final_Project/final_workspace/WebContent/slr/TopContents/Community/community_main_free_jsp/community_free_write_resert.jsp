<%@page import="bean.communitybean"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info_write_resert</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
	<%
	/* String uploadPath = "C:/Dropbox/Final_Project/final_workspace/WebContent/slr/TopContents/Community/imgs";
	
	MultipartRequest multi = null;
	int size = 10 * 1024 * 1024;
	try{
		multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
		communitybean fn = new communitybean();
		fn.setMulti(multi);
		
		int r = fn.append();
		System.out.println("되나4");
		if(r > 0){
			out.print("정상적으로 입력되었습니다.");
		}else{
			out.print("오류 발생하였습니다.");
		}
		
	}catch(Exception ex){
		ex.printStackTrace();
	} */
	%>
   
</body>
</html>