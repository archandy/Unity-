<%@page import="semiBean.MemberData"%>
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
<jsp:useBean id="d" class='semiBean.MemberData' scope ='page'/>
<jsp:setProperty property="*" name="d"/>


<%
String m_id="";
m_id = (String)session.getAttribute("m_id");

	MemberBean sb = new MemberBean();
	MemberData sd = sb.view2(m_id);
%>

<form name = 'frm' method='post'  action='update_result.jsp'>
	<label>아이디</label><input type='text' name='m_id' value='<%=sd.getM_id() %>'  readonly> <br/>
	<label>비밀번호</label><input type='password' name ='m_pwd'><br/>
	<label>비밀번호 확인</label><input type='password' name ='m_pwd2'><br/>
	<label>닉네임</label><input type='text' name ='m_nick' value ='<%=sd.getM_nick()%>'><br/>
	<input type='submit' value ="수정">

</form>

</body>
</html>