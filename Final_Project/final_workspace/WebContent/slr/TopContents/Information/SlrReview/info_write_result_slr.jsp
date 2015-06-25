<%@page import="bean.InfoBean"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
	int i=1;
	String uploadPath = "C:/Dropbox/Final_Project/final_workspace/WebContent/slr/TopContents/Information/img/upload";
	//String fileName1="";
	//String fileName2="";
	int size = 10*1024*1024;
	MultipartRequest multi = null;
	//Enumeration files=null;
	//try{
		multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy() );
		InfoBean ib = new InfoBean();
		ib.setMulti(multi);
		/* int r = ib.append(i);
	
		if(r>0){
			out.print("정상적으로 입력되었습니다.");
		}else{
			out.print("오류발생.");
		}
	}catch(Exception ex){ */
	
	//};
%>
<h3>입력결과</h3>
	<img src="../upload/<%=multi.getFilesystemName("picture") %>">
	이미지:		<%=multi.getFilesystemName("picture") %>
	Mid:		<%=multi.getParameter("mid")  	%>
	성명:		<%=multi.getParameter("irum") 	%>
	전화번호:	<%=multi.getParameter("phone") 	%>
	이메일:		<%=multi.getParameter("email") 	%>
	우편번호:	<%=multi.getParameter("zipcode")%>
	제목:		<%=multi.getParameter("jemok")%>
	입학날짜:	<%=multi.getParameter("mdate")%>
</body>
</html>