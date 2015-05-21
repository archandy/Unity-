<%@page import="semiBean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src ='member.js'></script>
</head>
<body>
<jsp:useBean id="sd" class="semiBean.MemberData" scope ='page'/>
<jsp:setProperty property="*" name = 'sd'/>
<%

String m_id="";
m_id = (String)session.getAttribute("m_id");
MemberBean sb = new MemberBean();
 	int r = sb.delete(m_id); 
  	if(r>0){ 
  		out.print("정상적으로 삭제되었습니다.");
   	}else{ 
  		out.print("오류 발생!!!");
   	} 
%> 


</body>
</html>