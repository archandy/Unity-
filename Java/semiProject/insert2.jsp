<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id='mb' class="semiBean.MemberBean" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="mb"/>

<h2>로그인 폼</h2>
<form name='frm' method='post' action='includeMain2.jsp?content=..semiProject/member/insert_result2.jsp'>
<ul>
		<li>선호하는 리그 :<input type="checkbox" name='m_league' value='프리미어 리그'>프리미어 리그
					   <input type="checkbox" name='m_player' value='세진리그'>세진리그
					   <input type="checkbox" name='m_player' value='태완이형 학교안나온 리그'>태완이형 학교안나온 리그 
						<input type="checkbox" name='m_player' value='은직이형 리그'>은직이형 리그
						<input type="checkbox" name='m_player' value='승욱이형 리그'>승욱이형 리그
						<input type="checkbox" name='m_player' value='백경이형 리그'>백경이형 리그
						<input type="checkbox" name='m_player' value='기타'>기타
		 </li>
		<li>좋아하는 팀:<input type="text" name='m_team'> </li>
		<li>좋아하는 선수: <input type="text" name='m_player'> </li>
		<li>좋아하는 포지션: <input type="text" name='m_pos'> </li>
		
		
		<p/>
			<input type='submit' value='확인'>
			
</ul>			
			
	</form>
	<hr />


</body>
</html>