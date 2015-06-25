<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<title>sample1</title>

<style>
/* reset */
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,textarea,p,blockquote,th,td,input,select,textarea,button {margin:0;padding:0}
fieldset,img {border:0 none}
dl,ul,ol,menu,li {list-style:none}
blockquote, q {quotes:none}
blockquote:before, blockquote:after,q:before, q:after {content:'';content:none}
input,select,textarea,button {vertical-align:middle}
button {border:0 none;background-color:transparent;cursor:pointer}
html {height:100%}
body {height:100%;padding:20px;background-color:#373a3f;font-size:12px;line-height:1.5;font-family:'Malgun Gothic','맑은고딕',sans-serif;color:#333}
a {color:#000;text-decoration:none}
address,caption,cite,code,dfn,em,var {font-style:normal;font-weight:normal}
table {border-collapse: collapse;border-spacing:0}
img {vertical-align:top}

.fc_p1 {color:#00e0d2}

.comm_tab1 {display:block;clear:both;*zoom:1;margin-top:20px;}
.comm_tab1:after {display:block;height:0;content:".";font-size:0;visibility:hidden;clear:both}
.comm_tab1>.tab_menu>li {float:left;margin-right:7px;text-align:center;font-size:16px;border-radius:7px;border:1px solid #242424;letter-spacing:-1px;-webkit-box-shadow:0px 0 7px rgba(0, 0, 0, 0.7);}
.comm_tab1>.tab_menu .tit {display:block;height:35px;padding:4px 30px 0;font-weight:bold;color:#fff;border-top-right-radius:7px;border-top-left-radius:7px;background-color:#4c5057;cursor:pointer;-webkit-box-shadow:inset 0 0 3px rgba(225, 225, 225, 0.5)}
.comm_tab1>.tab_menu .on {position:relative;height:30px}
.comm_tab1>.tab_menu .on .tit {height:32px;color:#00e1d3;border-bottom:2px solid #4c5057;-webkit-box-shadow:inset 0 1px 2px rgba(225, 225, 225, 0.3)}
.comm_tab1>.tab_cont {float:left;width:100%;clear:both;margin-top:-7px;border-radius:7px;-webkit-box-shadow:0px 0 7px rgba(0, 0, 0, 0.7);color:#fff}
.comm_tab1>.tab_cont>.cont {padding:20px;background-color:#4c5057;border:1px solid #242424;border-radius:7px;-webkit-box-shadow:inset 0 0 3px rgba(225, 225, 225, 0.5)}
.comm_tab1>.tab_cont>.cont:first-child {border-top-left-radius:0}
.comm_tab1 .comm_refer {margin:5px 0 18px 15px}

.comm_tab2 {display:block;clear:both;*zoom:1}
.comm_tab2:after {display:block;height:0;content:".";font-size:0;visibility:hidden;clear:both}
.comm_tab2>.tab_menu {float:right}
.comm_tab2>.tab_menu>li {float:left;text-align:center;font-size:13px;white-space:nowrap;margin-left:4px;}
.comm_tab2>.tab_menu .tit {display:block;height:26px;padding:5px 20px;font-weight:bold;color:#45494f;border-top-right-radius:7px;border-top-left-radius:7px;border:1px solid #242424;background-color:#c5c5c5;cursor:pointer;-webkit-box-shadow:0px -1px 3px rgba(0, 0, 0, 0.3)}
.comm_tab2>.tab_menu .on {position:relative}
.comm_tab2>.tab_menu .on .tit {height:20px;background-color:#fff;border-bottom:1px dashed #4b4f56}
.comm_tab2>.tab_cont {float:left;width:100%;clear:both;margin-top:-7px}
.comm_tab2>.tab_cont .cont {padding:25px;font-size:14px;color:#666;background-color:#fff;border:1px solid #242424;border-radius:7px;-webkit-box-shadow:0px 0px 5px rgba(0, 0, 0, 0.5);letter-spacing:-1px}
.comm_tab2>.tab_cont>.cont:last-child {border-top-right-radius:0}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
$(document).ready (function () {
	//탭(ul) onoff
	$('.jq_tabonoff>.jq_cont').children().css('display', 'none');
	$('.jq_tabonoff>.jq_cont div:first-child').css('display', 'block');
	$('.jq_tabonoff>.jq_tab li:first-child').addClass('on');
	$('.jq_tabonoff').delegate('.jq_tab>li', 'click', function() {
		var index = $(this).parent().children().index(this);
		$(this).siblings().removeClass();
		$(this).addClass('on');
		$(this).parent().next('.jq_cont').children().hide().eq(index).show();
	});
});
</script>
</head>
<body>

			<div class="jq_tabonoff comm_tab1">
				<ul class="jq_tab tab_menu">
					<li><a href="javascript:;" class="tit">자유게시판</a></li>
					<li><a href="javascript:;" class="tit">성인게시판</a></li>
					<li><a href="javascript:;" class="tit">자료실</a></li>
				</ul>
				<div class="jq_cont tab_cont">
					<!-- //탭1 -->
					<div class="cont">
						자유게시판
						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu">
								<li><a href="javascript:;" class="tit">자유-자유</a></li>
								<li><a href="javascript:;" class="tit">자유-질문</a></li>
								<li><a href="javascript:;" class="tit">자유-정보</a></li>
								<li><a href="javascript:;" class="tit">자유-허허</a></li>
							</ul>
							<div class="jq_cont tab_cont">
								<!-- //탭1-1 -->
								<div class="cont">
									자유-자유-내용
								</div>
								<!-- 탭1-1// -->

								<!-- //탭1-2 -->
								<div class="cont">
									자유-질문-내용
								</div>
								<!-- 탭1-2// -->

								<!-- //탭1-3 -->
								<div class="cont">
									자유-정보-내용
								</div>
								<!-- 탭1-3// -->

								<!-- //탭1-4 -->
								<div class="cont">
									자유-허허-내용
								</div>
								<!-- 탭1-4// -->
							</div>
						</div>
					</div>
					<!-- 탭1// -->

					<!-- //탭2 -->
					<div class="cont">
						성인게시판

						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu">
								<li><a href="javascript:;" class="tit">1</a></li>
								<li><a href="javascript:;" class="tit">2</a></li>
								<li><a href="javascript:;" class="tit">3</a></li>
							</ul>
							<div class="jq_cont tab_cont">
								<!-- //탭2-1 -->
								<div class="cont">
									
								</div>
								<!-- 탭2-1// -->

								<!-- //탭2-2 -->
								<div class="cont">
									
								</div>
								<!-- 탭2-2// -->

								<!-- //탭2-3 -->
								<div class="cont">
									
								</div>
								<!-- 탭2-3// -->
							</div>
						</div>
					</div>
					<!-- 탭2// -->

					<!-- //탭3 -->
					<div class="cont">
						
					</div>
					<!-- 탭3// -->
				</div>
			</div>


</body>
</html>