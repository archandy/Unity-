<%@page import="bean.ScoreData"%>
<%@page import="semiBean.MemberBean"%>
<%@page import="semiBean.MemberData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.ins{
	padding:10px;
	width:300px;
	height:200px;
}
.insbar,.insbar2{
	display:inline-block;
}
.insbar{
display: inline-block;
	border: 1px solid #EAEAEA;
	border-top:2px solid #ec0000;
	width: 30px;
	height: 20px;
	box-shadow: 0px 3px 5px #B0B0B0;
	float:left;
}
.insbar2{
display: inline-block;
	border: 1px solid #EAEAEA;
	border-top:2px solid #ec0000;
	width: 300px;
	height: 20px;
	box-shadow: 0px 3px 5px #B0B0B0;
	font-size: 13px;
	font-weight: bold;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="md" class="semiBean.MemberData" scope='page' />
<jsp:setProperty property="*" name='md' />
<%

		try{
			MemberBean sb = new MemberBean(); 
			int r = sb.append(md);
			if(r>0){%>
			<div class='insbar'> &nbsp;></div>
			<div class='insbar2'>회원가입완료</div>
			<div class='ins'>
			<%
				out.print("회원가입이 완료되었습니다 ^_^");
			%>
				</div>
				<% 
			}else{ %>
			<div class='ins2'>
			<%
				out.print("회원가입에 실패하였습니다.");
			%>
				</div>
			<%}
		}catch(Exception e){
			e.printStackTrace();
		}
		
%>

	
	
	
</body>
</html>