<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='stylesheet' href='TopContents/Mypage/mypage.css'
	type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="TopContents/Mypage/gesipan_list.js"></script>

</head>
<body>
	<div class="jq_tabonoff comm_tab1" id="wrap">
		<div class="jq_tab tab_menu" id="tab1">
			<div class="li" id="li1">
				<a href="javascript:;" class="tit" id="tit1">개인정보</a>
			</div>
			<div class="li" id="li2">
				<a href="javascript:;" class="tit" id="tit2">내게시물</a>
			</div>
			<div class="li" id="li3">
				<a href="javascript:;" class="tit" id="tit3">거래현황</a>
			</div>
			<div class="li" id="li4">
				<a href="javascript:;" class="tit" id="tit4">회원탈퇴</a>
			</div>
		</div>
		<div class="jq_cont tab_cont">
			<!----------------------------------개인정보--------------------------------> 
			<div class="cont" id="tab2">
				<div id='pri_main'>
					<div id='pri_title'>
						<img src='TopContents/Mypage/mem_img/tt_info.gif'>
					</div>
					<div id='pri_guide'>
						<div id=pri_guideimg>
							<img src='TopContents/Mypage/mem_img/info_img.gif'>
						</div>
						<div id=pri_guide_text>
							<b>'ohsuengwook'</b>님의 비밀번호와 개인정보 및 보유 장비등을 수정하실 수 있습니다.
						</div>
					</div>

					<div id=pri_cetification>
						<div id='pri_info1'>
							<img src='TopContents/Mypage/mem_img/info_login_title.gif'>
						</div>
						<div id='pri_line'>
							<div id='pri_info2'>
								서비스를 이용하기 위하여 정보인증이 필요합니다.<br /> 본 페이지는 보안접속을 제공합니다.
							</div>

							<div id='pri_input'>
								<div id='pri_id'>
									<img src='TopContents/Mypage/mem_img/mypage_id.jpg'>
								</div>
								<div id='pri_id_input'>
									<input type='text' size='15px'>
								</div>
								<div id='pri_pwd'>
									<img src='TopContents/Mypage/mem_img/mypage_pw.jpg'>
								</div>
								<div id='pri_pwd_input'>
									<input type='password' size='15px'>
								</div>
							</div>
							<div id='pri_btn_longin'>
								<a href='mainSlr.jsp?content=TopContents/Mypage/modify_pri.jsp'><img src='TopContents/Mypage/mem_img/bt_login_info.jpg'></a>
							</div>
						</div>
						<div id='pri_e2'>
							<img src='TopContents/Mypage/mem_img/info_e2.gif'>
						</div>
					</div>
				</div>
			</div>
			<!----------------------------------개인정보-------------------------------->

			<!----------------------------------내게시물-------------------------------->
			<div class="cont" id="tab3">
				<div id='pri_title'>
					<img src='TopContents/Mypage/mem_img/tt_info.gif'>
				</div>
				<div class="jq_tabonoff comm_tab2">
					<div class="ld1"></div>
					<ul class="jq_tab tab_menu2">
						<li><a href="javascript:;" class="tit">전체</a></li>
						<li><a href="javascript:;" class="tit">커뮤니티</a></li>
						<li><a href="javascript:;" class="tit">인포메이션</a></li>
						<li><a href="javascript:;" class="tit">갤러리</a></li>
					</ul>

					<div class="jq_cont tab_cont" id="cont1">
						<!-- //탭1-1 -->
						<div class="cont">전체</div>
						<!-- 탭1-1// -->

						<!-- //탭1-2 -->
						<div class="cont">커뮤니티</div>
						<!-- 탭1-2// -->

						<!-- //탭1-3 -->
						<div class="cont">인포메이션</div>
						<!-- 탭1-3// -->
						<div class="cont">갤러리</div>
					</div>
				</div>
				<div id="list_wrap">
					<img src="imgs/Information/bar.png" id='cont_bar'>

				</div>
				<div id="list">
					<div id="list_gongji">
						<div id="g_rno">
							<font class="gongji_text" id="gongji_rno">공지</font>
						</div>
						<div id="g_title">
							<font class="gongji_text" id="gongji_title"> <a
								class="list_a" href="#">[공지] SLR리뷰 운영 안내</a> <font
								id="gongji_reply">[191]</font>
							</font>
						</div>
						<div id="g_id">
							<font class="gongji_text" id="gongji_id"> SLR </font>
						</div>
						<div id="g_date">
							<font class="gongji_text" id="gongji_date">2015/06/15</font>
						</div>
						<div id="g_like">
							<font class="gongji_text" id="gongji_like">999</font>
						</div>
						<div id="g_cnt">
							<font class="gongji_text" id="gongji_cnt">999999</font>
						</div>
					</div>
					<div id="list_gesi">
						<div id="list_rno">
							<font class="gesi_text" id="gesi_rno">999999</font>
						</div>
						<div id="list_title">
							<font class="gesi_text" id="gesi_title"> <a class="list_a"
								href="#">[공지] SLR리뷰 운영 안내</a> <font id="gesi_reply">[191]</font>
							</font>
						</div>
						<div id="list_id">
							<font class="gesi_text" id="gesi_id"> <a class="list_a"
								id="list_aid" href="#">사용자아이디</a>
							</font>
						</div>
						<div id="list_date">
							<font class="gesi_text" id="gesi_date">2015/06/15</font>
						</div>
						<div id="list_like">
							<font class="gesi_text" id="gesi_like">999</font>
						</div>
						<div id="list_cnt">
							<font class="gesi_text" id="gesi_cnt">999999</font>
						</div>
					</div>
				</div>

				<div id="list_bot">
					<div id="btn_left">
						<div id="prev_btn">
							<a href="" id="prev_page">이전페이지</a>
						</div>
						<div id="next_btn">
							<a href="" id="next_page">다음페이지</a>
						</div>
					</div>
					<div id="page_img">
						<img src="imgs/Information/pg_btn2.jpg" id="prev_btn1"> <img
							src="imgs/Information/pg_btn1.JPG" id="prev_btn2">

						<div id="pg_num">
							<a href="#"> 1</a> <img
								src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif"
								width="17" height="6" alt="|"> <a href="#"> 2</a> <img
								src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif"
								width="17" height="6" alt="|"> <a href="#"> 3</a>
						</div>
						<img src="imgs/Information/pg_btn3.JPG" id="next_btn2"> <img
							src="imgs/Information/pg_btn4.jpg" id="next_btn1">

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
			<!----------------------------------내게시물-------------------------------->

			<!----------------------------------거래내역-------------------------------->
			<div class="cont" id="tab4">
				<div id='pri_title'>
					<img src='TopContents/Mypage/mem_img/tt_info.gif'>
				</div>
			</div>
			<!----------------------------------거래내역-------------------------------->

			<!----------------------------------회원탈퇴-------------------------------->
			<div class="cont" id="tab5">
				<div id='tal_main'>
					<div id='tal_title'>
						<img src='TopContents/Mypage/mem_img/tt_info.gif'>
					</div>
					<div id='tal_guide'>
						<div id=tal_guideimg>
							<img src='TopContents/Mypage/mem_img/info_img.gif'>
						</div>
						<div id=tal_guide_text>
							<b>'ohsuengwook'</b>님의 비밀번호와 개인정보 및 보유 장비등을 수정하실 수 있습니다.
						</div>
					</div>

					<div id=tal_cetification>
						<div id='tal_info1'>
							<img src='TopContents/Mypage/mem_img/info_out_title.gif'>
						</div>
						<div id='tal_line'>
							<div id='tal_info2'>
								회원 탈퇴시 1개월간 재가입이 불가능하며,<br /> 이용정지중 탈퇴는 영구제명이 될 수 있습니다.<br />
								탈퇴시 이전 게시물은 삭제가 불가능하게 되므로<br /> 신중을 가하시기 바랍니다.<br /> 이 페이지는
								보안접속을 제공합니다.<br />
							</div>
							<div id='tal_input'>
								<div id='tal_id'>
									<img src='TopContents/Mypage/mem_img/mypage_id.jpg'>
								</div>
								<div id='tal_id_input'>
									<input type='text' size='15px'>
								</div>
								<div id='tal_pwd'>
									<img src='TopContents/Mypage/mem_img/mypage_pw.jpg'>
								</div>
								<div id='tal_pwd_input'>
									<input type='password' size='15px'>
								</div>
							</div>
							<div id='tal_btn_longin'>
								<img src='TopContents/Mypage/mem_img/bt_out.gif'>
							</div>
						</div>
						<div id='tal_e2'>
							<img src='TopContents/Mypage/mem_img/info_e2.gif'>
						</div>
					</div>
				</div>
			</div>
			<!----------------------------------회원탈퇴-------------------------------->
		</div>
	</div>
</body>
</html>