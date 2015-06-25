<%@page import="bean.memberData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SLRClub, 사진가를 위한 커뮤니티</title>
<link rel="shortcut icon" href="./imgs/main/favicon.ico"/>
<link href='css/MainPage.css' rel='stylesheet' type='text/css'>
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
		url = "login_result.jsp"
		login_form.action = url;
		login_form.submit();
	}

	function logouttry() {
		// data.getMid()는 서버에 있는 데이터이기때문에 javascript(클라이언트)쪽에선 서버에 접근할 수가 없기때문에
		// 몰래 form 안에 input hidden으로 클라이언트에 저장시켜야 한다. .
		url = "login_result2.jsp";
		logout.action = url;
		logout.submit();
	}
	function Letgo(){
		location.href='mainSlr.jsp?content=TopContents/Mypage/main_pri.jsp';
	}
	
</script>
<script src='./lib/jquery-2.1.4.js'></script>

</head>
<body>
<jsp:useBean id="bbb" class="bean.memberBean" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="bbb"/>

	<%
	
	String id = (String) session.getAttribute("id");
	String nick = (String) session.getAttribute("nick");

	bbb.view3(id);
		memberData data = new memberData();
		
		String content = "TopContents/MainPage/MainPage.jsp";
		if (request.getParameter("content") != null) {// ? content에 넣어라
			content = request.getParameter("content");
		}
	%>


	<div class='main'>
		<div id='header'>

			<div id="slrlogo">
				<a href='mainSlr.jsp'><img src="imgs/main/logo_slr.png"></a>
			</div>


			<div id='Ad1'></div>

		</div>
		<div id='middle'>

			<%
				if (content.substring(0, 19).equals("TopContents/Gallery")) {
					// 			"smiles".substring(1, 5) returns "mile"
			%>

			<%@include file='TopMenuLinks/GalleryTopMenuLinks.jsp'%>
			<%
				} else {
			%>
			<%@include file='TopMenuLinks/TopMenuLinks.jsp'%>
			<%
				}
			%>


			<div id='blankGalleryMain'>
				<%
// 					String id = null;
					String password = null;
// 					String nick = "";
					int now_level;
					int point;
					if (session.getAttribute("id") == null) {
				%>
				<div id="lo_main32">
					<div id="log_in532">
						<a class="login99932"
							href='mainSlr.jsp?content=TopContents/Member/member_firstPage.jsp'>
							회원가입 </a>
					</div>
					<div id="log_in632">
						<a class="login99932"
							href="mainSlr.jsp?content=TopContents/Member/IDPWS.jsp">
							ID/비밀번호 찾기 </a>
					</div>
					<div id="log_in432" onclick="doLayerPopup('show')"
						style="cursor: pointer;">
						<a class="login99932">로그인</a>
					</div>
				</div>

				<div id="lo_main32">
					<form name='login_form' method='post' action="login_result.jsp">
						<div id="layerPopup"
							style="position: absolute; z-index: 10; width: 255px; height: 155px; left: 1195px; top: 150px; display: none; background-color: #ffffff;">

							<div id="lo_main2">
								<div id="x_icon">
									<img src="bt_close.gif" onclick="doLayerPopup('hide')">
								</div>

								<div id="log_in12">로그인</div>
								<div id="bbzx">

									<div id="log_in22">
										<input type="text" name="id" size="13" style="height: 20px;">
									</div>

									<div id="log_in32">
										<input type="password" name="password" size="13"
											style="height: 20px;">
									</div>

								</div>
								<div id="log_in42">
									<img src="bt_login.gif" onClick="logintry()">
								</div>
							</div>
						</div>
					</form>
				</div>
				<%
					} else if (session.getAttribute("id").equals("d")) {
				%>
				<div id="lo_main32">
					<div id="log_in532">
						<a class="login99932"
							href='mainSlr.jsp?content=TopContents/Member/member_firstPage.jsp'>
							회원가입 </a>
					</div>
					<div id="log_in632">
						<a class="login99932"
							href="mainSlr.jsp?content=TopContents/Member/IDPWS.jsp">
							ID/비밀번호 찾기 </a>
					</div>
					<div id="log_in432" onclick="doLayerPopup('show')"
						style="cursor: pointer;">
						<a class="login99932">로그인</a>
					</div>
				</div>

				<div id="lo_main32">
					<form name='login_form' method='post' action="login_result.jsp">
						<div id="layerPopup"
							style="position: absolute; z-index: 10; width: 255px; height: 155px; left: 1195px; top: 150px; display: none; background-color: #ffffff;">

							<div id="lo_main2">
								<div id="x_icon">
									<img src="bt_close.gif" onclick="doLayerPopup('hide')">
								</div>

								<div id="log_in12">로그인</div>
								<div id="bbzx">

									<div id="log_in22">
										<input type="text" name="id" size="13" style="height: 20px;">
									</div>

									<div id="log_in32">
										<input type="password" name="password" size="13"
											style="height: 20px;">
									</div>

								</div>
								<div id="log_in42">
									<img src="bt_login.gif" onClick="logintry()">
								</div>
							</div>
						</div>
					</form>
				</div>

				<%
					}

					else if (session.getAttribute("id") != null) {
				%>
				<div id="lo_main32">
					<form name='logout' method='post'
						action="TopMenuLinks/login_result2.jsp">
						<%
								id = (String) session.getAttribute("id");
								nick = (String) session.getAttribute("nick");
					
						%>
						<div id="log_in432" onclick="doLayerPopup('show')"
							style="cursor: pointer;">
							<%=nick%>님 [<%=data.getNow_level() %> <%=data.getPoint() %>]
							] <input type="button" value='로그아웃' onclick='logouttry()'>
							<input type="button" value="내정보" onclick='Letgo()'>
						</div>
						<%
							}
						%>

					</form>
				</div>
			</div>
			<jsp:include page="<%=content%>" />
			

		</div>
		<!-- 		<div id='footer'> -->
		<!-- 			<div id='footerCopyright'>COPYRIGHT (C) SLRCLUB. ALL RIGHTS -->
		<!-- 				RESERVED.</div> -->
		<!-- 		</div> -->
	</div>

</body>
</html>