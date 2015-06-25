<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function doLayerPopup(v) {
	var layerPopupFull = document.getElementById("layerPopupFull");
	var layerPopup = document.getElementById("layerPopup");

	if (v == "show") {
		//layerPopupFull.style.display = "";
		layerPopup.style.display = "";
	} else {
	
		layerPopup.style.display = "none";
	}
}

function logintry() {
// data.getMid()는 서버에 있는 데이터이기때문에 javascript(클라이언트)쪽에선 서버에 접근할 수가 없기때문에
// 몰래 form 안에 input hidden으로 클라이언트에 저장시켜야 한다. .
url = "TopMenuLinks/login_result.jsp"
login_form.action = url;
login_form.submit();
window.opener.location.reload();
window.close();
}

</script>
</head>
<body>
	<%
		String id = null;
		String password = null;
		String nick =null;
		if (session.getAttribute("id") == null) {
	%> 
	
	<div id="slrlogin">
				<div id="lo_main">
				
				
					<div id="log_in5">
						<a class="login999" href='mainSlr.jsp?content=TopContents/Member/member_firstPage.jsp'>
							회원가입
						</a>
					</div>
					<div id="log_in6">
						<a class="login999" href="mainSlr.jsp?content=TopContents/Member/IDPWS.jsp">
							ID/비밀번호 찾기						
							
						</a>
					</div>
					
						<div id="log_in4" onclick="doLayerPopup('show')" style="cursor: pointer;">
				
					<a class="login999">로그인</a></div>
					
				</div>
			
			
	
	<form name='login_form' method='post' action="TopMenuLinks/login_result.jsp">
	<div id="layerPopup"
		style="position: absolute; z-index: 10; width: 255px; height: 155px; left: 1195px; top: 150px; display: none; background-color: #ffffff;">
		
		<div id="lo_main2">
			<div id="x_icon">
				<img src="TopMenuLinks/bt_close.gif" onclick="doLayerPopup('hide')">
			</div>
	
			<div id="log_in12">로그인</div>
			<div id="bbzx">
			
				<div id="log_in22">
					<input type="text" name="id" size="13" style="height: 20px;" >
				</div>

				<div id="log_in32">
					<input type="password" name="password" size="13" style="height: 20px;" >
				</div>
				
			</div>
			<div id="log_in42">
				<img src="TopMenuLinks/bt_login.gif" onClick="logintry()">
			</div>
		</div>
		
	</div>
		</form>
		</div> 
	
	<%System.out.println("저장안됨");
		}
		else if(session.getAttribute("id") != null)
		{
		
		System.out.println("저장됨");
	%> 
<div id="slrlogin">
 <form name='logout' method='post' action="TopMenuLinks/login_result2.jsp">
 
		<%
				id = (String) session.getAttribute("id");
				nick = (String)session.getAttribute("nick");
		%>
<div id="layerPopup"
		style="position: absolute; z-index: 10; width: 255px; height: 155px; left: 1195px; top: 150px; display: none; background-color: #ffffff;">
		
					<div id="log_in5">
						
					</div>
					<div id="log_in6">
				
					</div>
		<div id="slrlogin">
				<div id="lo_main">
						<%=nick %>님 안녕하세요</div>
					<input type="button" value="로그아웃" onclick='logouttry()'>
				</div>
			</div> 
			
	
			<%
				}
			%>
		
		</form>
</div>
</body>
</html>