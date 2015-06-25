<%@page import="bean.GalleryData"%>
<%@page import="bean.GalleryBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<title>sample1</title>
<!-- <script src='js/GalleryJS/Gallery.js'></script> -->
<link rel="stylesheet" type="text/css"
	href="TopContents/Gallery/View/gesipan_view.css">
<link rel='stylesheet'
	href='TopContents/Gallery/js/community_comment.css' type='text/css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- <script type="text/javascript" src="TopContents/Information/gesipan_list.js"></script> -->
<!-- 댓글열고닫기 -->
<script>
	$(function() {
		var flag = true;
		$('.comment_hide').click(function() {
			if (flag == true) {
				$('.comment_area').hide();
				flag = false;
			} else {
				$('.comment_area').show();
				flag = true;
			}

		});
	});
</script>

<!-- 댓글 불러오기 -->
<script>
	var xhr;
	function init() {
		if (window.ActiveXObject) {
			xhr = new ActiveXObject("Msxml2.XMLHTTP");
		} else if (window.XMLHttpRequest) {
			xhr = new XMLHttpRequest();
		}
		xhr.onreadystatechange = searchProcess;
		xhr.open("POST", "TopContents/Gallery/View/Gallery_View_Comment.jsp");
		xhr.send();
	}
	function searchProcess() {
		if (xhr.status == 200 && xhr.readyState == 4) {
			var r = xhr.responseText;
			var rs = document.getElementById("comment_ID1");
			rs.innerHTML = r;

		}
	}

	function GallCommentWrite() {
		alert("df");
		frm_insert.submit();
		if (window.ActiveXObject) {
			xhr = new ActiveXObject("Msxml2.XMLHTTP");
		} else if (window.XMLHttpRequest) {
			xhr = new XMLHttpRequest();
		}
		xhr.onreadystatechange = searchProcess;
		xhr.open("POST",
				"TopContents/Gallery/Write/Gallery_Comment_write_result.jsp");
		xhr.send();
	}

	function GalleryDelete() {
		document.getElementById('Gallery_delete').onclick = function() {

			var UP;
			UP = confirm("정말 삭제 합니까?");

			if (UP) {
				if (window.ActiveXObject) {
					xhr = new ActiveXObject("Msxml2.XMLHTTP");
				} else if (window.XMLHttpRequest) {
					xhr = new XMLHttpRequest();
				}
				xhr.onreadystatechange = searchProcess;
				xhr.open("POST", "TopContents/Gallery/View/Gallery_delete.jsp");
				xhr.send();
				alert("삭제되었습니다?");
				url = "mainSlr.jsp?content=TopContents/Gallery/ProGallery.jsp";
				location.href = url;
			} else {
				alert("삭제를 취소합니다.");
			}

		}

	}
</script>
<!-- 배경글씨색 갤러리분위기 -->
<style>
#comment_getID {
	font-size: 100%;
	font-weight: bold;
}

#comment_ID {
	background: #333333;
}

#comment_ID1 {
	height: auto;
	padding-top: 20px;
	padding-bottom: 20px;
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

#info_view_body {
	padding-left: 0px;
}
</style>
</head>
<body>
	<jsp:useBean id="d" class='bean.GalleryData' scope='page' />
	<jsp:setProperty property="*" name="d" />
	<%
		int temp = (Integer.parseInt(request.getParameter("frno")));
		session.setAttribute("frno", temp);
		String sessionNick = (String) session.getAttribute("nick");
		GalleryBean sb = new GalleryBean();
		GalleryData data = sb.view(temp);

		session.setAttribute("picName", data.getContentsPic());
		session.setAttribute("orgRno", temp);
	%>
	<div id='info_view_wrap'>
		<div id='info_view_top'>
			<div id='info_view_top1'>
				<div id='info_view_top_1'>
					<font class='info_view_text' id='view_t1'>제목</font>
				</div>
				<div id='info_view_top_2'>
					<font class='info_view_text' id='view_t2'><%=data.getJemok()%></font>
				</div>
			</div>
			<div id='info_view_top2'>
				<div id='info_view_top_3'>
					<font class='info_view_text' id='view_t3'>작성자</font>
				</div>
				<div id='info_view_top_4'>
					<a href='#' id='info_mid'><font class='info_view_text'
						id='view_t4'><%=data.getId()%></font></a>
				</div>
				<div id='info_view_top_5'>
					<font class='info_view_text' id='view_t5'>작성일</font>
				</div>
				<div id='info_view_top_6'>
					<font class='info_view_text' id='view_t6'><%=data.getMdate()%></font>
				</div>
				<div id='info_view_top_7'>
					<font class='info_view_text' id='view_t7'>조회</font>
				</div>
				<div id='info_view_top_8'>
					<font class='info_view_text' id='view_t8'><%=data.getHit()%></font>
				</div>
				<div id='info_view_top_9'>
					<font class='info_view_text' id='view_t7'>추천</font>
				</div>
				<div id='info_view_top_10'>
					<font class='info_view_text' id='view_t8'><%=data.getGood()%></font>
				</div>
			</div>
		</div>
		<div id='info_view_body'>
			<div id='info_view_body_1'>
				<img src='TopContents/Gallery/images/<%=data.getContentsPic()%>'
					width="1000px"> <font class='info_view_text' id='view_t9'><p>
						<%=data.getContentsTxt()%></font>
			</div>
		</div>
		<div class="slr_comment">
			<div class='slr_view'>
				<div id='slr_view2'>광고</div>
				<div class="slr_comment_open">
					<span class="slr_comment_cnt">총 <span id="slrcnt">0</span>
						개의 댓글이 있습니다.
					</span> <span id="slr_comment_close"> <img alt="댓글닫기"
						src="TopContents/Information/img/bt_cmt_close.gif" width="76"
						height="12" class="comment_hide" /></span>
				</div>
			</div>
			<div class="comment_area">
				<div id="comment_pgc">
					<div id='comment_clr1'>
						<img width="63" height="23" alt="새로고침"
							src="TopContents/Gallery/View/imgs/refresh.png" />
					</div>
					<div id='comment_clr2'>
						<input type="text" value="" id="ksearch" autocomplete="Off"
							class="search" role="textbox" aria-autocomplete="list"
							aria-haspopup="true" size='18'>
					</div>
					<div id='comment_clr3'>
						<img width="43" height="23" alt="댓글검색"
							src="TopContents/Gallery/View/imgs/search.png">
					</div>
					<div id='comment_clr4'>
						<input type="text" class="txt_st" value="50" id="slrno" size='1'>
					</div>
					<div id='comment_clr5'>
						<img width="63" height="23" alt="출력수 설정"
							src="TopContents/Gallery/View/imgs/howmuch_show.png">
					</div>

				</div>
				<div id='comment_ID1'></div>
				<form name='frm_insert' method='post' enctype='multipart/form-data'
					action='TopContents/Gallery/View/Gallery_Write_Comment_Result.jsp'>
					<div id='comment_ID'>
						<div id='comment_ID2'>
							<div id='comment_getID1'>
								<input type="text" value="<%=sessionNick%>" id='comment_Id'
									style="background: #333333; border: 0px solid black; color: white;">
							</div>
							<div id='comment_text'>
								<textarea id='comment_TA' cols="100" rows="5" name='comment'
									style="overflow-y: scroll"></textarea>
							</div>
							<div id='comment_text1'>
								<img src='TopContents/Gallery/View/imgs/comment_confirm.png'
									id='comment_write'>
							</div>
						</div>
					</div>
					<input type="file">
				</form>

			</div>
			<div class="comment_bottom_btns">

				<div class="btn1">
					<img src="TopContents/Gallery/View/imgs/good.png" width="63"
						height="26" alt="추천" /> <img
						src="TopContents/Gallery/View/imgs/bad.png" width="63" height="26"
						alt="신고" /> <img src="TopContents/Gallery/View/imgs/scrap.png"
						width="63" height="26" alt="스크랩" />
					<%
						String sessionId = (String)session.getAttribute("id");
						String getId = data.getId();
						System.out.println("세션아이디 = "+sessionId);
						System.out.println("getId = "+data.getId());
						if (sessionId==null) {
 					%>
					<%
						}else if(sessionId.equals(data.getId())){
							%>
					<div id="Gallery_delete" onclick="GalleryDelete()>삭제하기">삭제하기</div>
					<%
						}
					%>
				</div>

				<div class="btn2">
					<img src='TopContents/Gallery/View/imgs/confirm.png' width="63"
						height="26" alt="글쓰기" /> <img
						src="TopContents/Gallery/View/imgs/list.png" width="63"
						height="26" alt="목록보기" />
				</div>

			</div>
			<div class='contents'>
				<hr />
				<div id='NextContent'>
					<B>다음글</B>
				</div>
				<div id='NextContents'>다음글</div>
				<hr />
				<div id='BackContent'>
					<B>이전글</B>
				</div>
				<div id='BackContents'>이전글</div>
				<hr />
			</div>
		</div>

	</div>
	<script>
		init();

		$(function() {
			$("#comment_write")
					.click(
							function(event) {
								var pText = $("#comment_TA");
								var pId = $("#comment_Id");

								if ($.trim(pText.val()) == "") {
									alert("내용을 입력하세요.");
									pText.focus();
									return;
								}
								var commentParentText = "<div id ='comment_getID2'></div><div id ='comment_getID'>"
										+ pId.val()
										+ "</div><div id ='comment_getData'>날자</div><div id ='comment_HP'>추천 | 신고</div><div id ='comment_gettext'>"
										+ pText.val()
										+ "</div><div id ='comment_comment'>댓글의 댓글▼</div>";

								$('#comment_ID1').append(commentParentText);

								$("#comment_TA").val("");

							});
		});
	</script>
</body>
</html>