<%@page import="bean.memberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./TopContents/Member/member_css.css">

<style>

.join_wrap{
transform: scale(1.15, 1.2);
position: relative;
top:50px;
left:85px;
}

#zzz1234{
	margin-top:50px;
	margin-left: 30px;
}

</style>
</head>
<body>

		
<jsp:useBean id="md" class="bean.memberData" scope='page' />
<jsp:setProperty property="*" name='md' />
<%

		try{
			memberBean sb = new memberBean();				
			int r = sb.append(md);
			if(r>0){%>
					<div class="join_wrap">
	<div class="page_tt">
			<div>
				<h2>
					<img src="./TopContents/Member/img/zxczxczxczxc.png" height="15">&nbsp;<img
						src="http://media.slrclub.com/sp_delivery/regist/join_tt.gif"
						alt="회원가입" class="rt" width="53" height="15" />
				</h2>
			</div>
			<div id="zzz123"></div>
			<div>
				<p>
					<b><font color="#81BEF7">SLRCLUB</font></b>에 회원으로 가입하세요. 다양한 정보와
					서비스가 회원전용으로 제공되고 있습니다.
				</p>
			</div>
		</div>
		
		<div id="zzz1234">
			<img src="./TopContents/Member/img/czxcvdeq2.png">
		
		</div>
		<div class="page_btn">
			<a href="mainSlr.jsp">
			<input type="button" name="m_last" value="확인">
			</a>
		</div>
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