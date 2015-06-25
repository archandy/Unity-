<%@page import="bean.GalleryData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="TopContents/Gallery/js/gesipan_list.css">
<script src='js/GalleryJS/Gallery.js'></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						//탭(ul) onoff
						$('.jq_tabonoff>.jq_cont').children().css('display',
								'none');
						$('.jq_tabonoff>.jq_cont div:first-child').css(
								'display', 'block');
						$('.jq_tabonoff>.jq_tab li:first-child').addClass('on');
						$('.jq_tabonoff')
								.delegate(
										'.jq_tab>li',
										'click',
										function() {
											var index = $(this).parent()
													.children().index(this);
											$(this).siblings().removeClass();
											$(this).addClass('on');
											$(this).parent().next('.jq_cont')
													.children().hide()
													.eq(index).show();
										});
					});
</script>
<style>
#write_btn {
	background: #333333;
}

#info_bot2_radio {
	color: #cccccc;
}

.pagenumber {
	color: white;
}

#write_page {
	color: #cccccc;
	float: left;
}

#page_img {
	top: 15px;
	width: 1000px;
}

#pg_num_bk {
	margin-right: 90px;
	margin-left: 130px;
	float: left;
	width: 450px;
	/* 	border: 1px solid white; */
}

.jq_cont {
	border: 0px solid black;
}

html {
	background: #242424;
}

#info_view_wrap {
	color: #d5d5d5;
	color: #d5d5d5;
}

#view_t3 {
	color: #d5d5d5
}

ul {
	list-style: none;
	padding: 0px;
	margin: 0px;
}

.jq_tabonoff {
	width: 1000px;
	margin: auto;
}

#blank {
	height: 30px;
}

.jq_tab {
	background: #3a3a3a;
	width: 240px;
	height: 230px;
	margin: 0px;
}

.hit_pic {
	background: #333333;
	width: 740px;
	height: 460px;
	float: right;
	position: relative;
	left: -8px;
}

.jq_cont {
	width: 1000px;
	height: 700px;
}

.jq_tabonoff.comm_tab2 {
	position: relative;
	top: -232px;
}

#GalleryMenu {
	font-size: 20px;
	color: #eeeeee;
	margin: 15px;
	padding-left: 52px;
	float: left;
	text-align: center;
	text-decoration: none;
}

#ArtGalleryCategoryColumn, #ArtGalleryCategoryColumnAll {
	text-align: center;
	text-decoration: none;
	font-size: 13px;
	margin: 5px;
	margin-left: 20px;
	margin-bottom: 10px;
	width: 90px;
	float: left;
	color: #eeeeee;
}

#ArtGalleryCategoryColumnAll {
	margin-top: 20px;
	margin-bottom: 20px;
	width: 210px;
}

#ArtGalleryPhotoColumn {
	float: left;
	width: 240px;
	height: 220px;
	margin: 10px;
	margin-right: 10px;
	margin-bottom: 0px;
	margin-left: 0px;
	background: #333333;
}
</style>

</head>
<body>
	<%
		String loca = "TopContents/Gallery/";
	%>
	<div class='jq_tabonoff comm_tab1'>
		<div class='hit_pic'>힛_사진_이미지1</div>
		<ul class='jq_tab tab_menu'>
			<li><a href="javascript:;" class="tit" id='GalleryMenu'>작가
					갤러리</a></li>
			<li><a href="javascript:;" class="tit" id='GalleryMenu'>작품
					갤러리</a></li>
			<li><a href="javascript:;" class="tit" id='GalleryMenu'>습작
					갤러리</a></li>
		</ul>
		<div class="jq_cont tab_cont">
			<div class="cont">
				<div class="jq_tabonoff comm_tab2">
					<ul class="jq_tab tab_menu">
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumnAll'>전체보기</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>일상/스냅</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>모델/연출</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>아이/가족</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>자연/풍경</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>생태/동식물</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>사물/제품</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>건축/예술품</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>스포츠/취미</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>여행/문화</a></li>
						<li><a href="javascript:;" class="tit"
							id='ArtGalleryCategoryColumn'>누드</a></li>
					</ul>

					<!--사진나열 -->
					<div class='jq_cont tab_cont'>

						<jsp:useBean id="ll" class='bean.GalleryBean' scope='page' />
						<jsp:setProperty property="*" name="ll" />
						<%
							String findStr = "";
							if(request.getParameter("findStr") != null){
								findStr = request.getParameter("findStr");
							}
							ArrayList<GalleryData> a;
						%>

						<div id='cont'>

							<%
								String cat = "all";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory() != null){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px">
								</a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "0";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("0")){
							%>
							<!-- 일상/스냅 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px">
								</a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "1";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("1")){
							%>
							<!-- 모델/연출 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px">
								</a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "2";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("2")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "3";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("3")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "4";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("4")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "5";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("5")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "6";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("6")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "7";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("7")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "8";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("8")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>
						<div id='cont'>
							<%
								cat = "9";
								a = ll.list(cat);
								for(GalleryData s : a){
									if(s.getGallProCategory().equals("9")){
							%>
							<!-- 전체보기 -->
							<div id='ArtGalleryPhotoColumn'>
								<a href='#' onclick="goview('<%=s.getGallProRno()%>')"> <img
									src='TopContents/Gallery/images/<%=s.getContentsPic()%>'
									width="240px" height="220px"></a>
							</div>
							<%
								}
								}
							%>
						</div>


					</div>

				</div>
			</div>
		</div>
		<div id='bottom_contents'>
			<div id="list_bot">

				<!-- 			페이지분리 -->
				<div id="page_img">
					<%
						if(ll.getNowBlock() > 0){
					%>
					<a href="" id="write_page"
						onclick="goPage(<%=ll.getNowPage() - 1%>)">이전페이지</a> <a href=""
						id="write_page" onclick="goPage(<%=ll.getNowPage() + 1%>)">다음페이지</a>
					<%
						}
					%>
					<%
						String nowFlag = "";
					%>
					<div id="pg_num_bk">
						<%
							for(int i = ll.getStartPage(); i <= ll.getEndPage(); i++){
								if(ll.getNowPage() == i)
									nowFlag = ""; //nowPage가 i라면 (현재 페이지가 선택되어있다면?) 비활성화시켜라
								else nowFlag = "href='#'"; //그게아니라면 아무것도하지말아라
						%>

						<a <%=nowFlag%> onclick="goPage(<%=i%>)"><font color="white">
								<%=i%></font> </a> |



						<%-- 				<input type='button' value='<%=i%>' onclick="goPage(<%=i%>)"> --%>
						<%
							}
						%>
					</div>
					<%
						if(ll.getNowBlock() < ll.getTotBlock()){
					%>

					<%
						}
						if(session.getAttribute("id") != null){
					%>
					<div id="btn_right">
						<form name='list9_frm' method='post'>
							<div id="write_btn">

								<a
									href="mainSlr.jsp?content=TopContents/Gallery/Write/Gallery_write.jsp"
									id="write_page">글쓰기</a> <input type='hidden' name='nowPage'>

							</div>
						</form>
					</div>
					<%
						}
					%>
				</div>
			</div>

			<div id='info_bot2'>
				<div id='info_bot2_radio'>
					<label> <input type='radio' name='info_search'><font
						class='info_bot2_text'>이름</font>
					</label> <label> <input type='radio' name='info_search'><font
						class='info_bot2_text'>아이디</font>
					</label> <label> <input type='radio' name='info_search'><font
						class='info_bot2_text'>제목</font>
					</label> <label> <input type='radio' name='info_search'><font
						class='info_bot2_text'>내용</font>
					</label> <input id='info_bot2_search_box' type='text' name='info_str'>
				</div>
				<div id='info_search_btn'>
					<a href='#'><font>검색</font></a>
				</div>
				<div id='info_bot2_announce'>
					<font> 최근자료가 아닌 경우 [ 계속 검색 ]으로 찾을 수 있습니다. </font>
				</div>
			</div>
		</div>
	</div>
</body>
</html>