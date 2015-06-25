<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mall</title>
<link rel='stylesheet' href='TopContents/mall/main.css' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />

</head>
<body>
	<div class="jq_tabonoff comm_tab1" id="wrap">

		<div class="jq_tab tab_menu" id="tab1">
			<div class="li" id="li1">
				<a href="javascript:;" class="tit" id="tit1">아이템 구매</a>
			</div>
			<div class="li" id="li2">
				<a href="javascript:;" class="tit" id="tit2">인벤토리</a>
			</div>
		</div>
		<div class="ld1"></div>
		<div class="jq_cont tab_cont">
			<!-- //탭1 -->
			<div class="cont" id="tab2">
				<div class="jq_tabonoff comm_tab2">
					<ul class="jq_tab tab_menu2">
						<li><a href="javascript:;" class="tit">전체</a></li>
						<li><a href="javascript:;" class="tit">라이센스</a></li>
						<li><a href="javascript:;" class="tit">추천아이템</a></li>
						<li><a href="javascript:;" class="tit">포인트아이템</a></li>
					</ul>
					<div class="jq_cont tab_cont" id="cont1">
						<!-- //탭1-1 -->
						<div class="cont_wrap">
							<div class="cont">아이템 전체를 볼 수 있습니다.</div>
						</div>
						<!-- 탭1-1// -->
						<!-- //탭1-2 -->
						<div class="cont">라이센스 아이템을 볼 수 있습니다.</div>
						<!-- 탭1-2// -->
						<!-- //탭1-3 -->
						<div class="cont">추천 관련 아이템을 볼 수 있습니다.</div>
						<!-- 탭1-3// -->
						<!-- //탭1-4 -->
						<div class="cont">포인트 관련 아이템을 볼 수 있습니다.</div>
						<!-- 탭1-4// -->
					</div>
					<div id='main_list_item'>
						<div id='list_item'>
							<div id='item_img'>S</div>
							<div id='item_contents'>
								<div id='item_name'>라이센스 S</div>
								<div id='item_price'>
									가격 <font color='#ff0000'>500000 P</font>
								</div>
								<div id='item_levellimit'>
									레벨 <font color='#ff0000'>100</font>이상
								</div>
								<div id='item_licencelimit'>
									<font color='#ff0000'>A급 라이센스 필요</font>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="list_wrap">
					<div id="list">
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
								<img src="TopContents/mall/img_final/pg_btn2.jpg" id="prev_btn1">
								<img src="TopContents/mall/img_final/pg_btn1.JPG" id="prev_btn2">

								<div id="pg_num">
									<a href="#">1</a>
								</div>
								<img src="TopContents/mall/img_final/pg_btn3.JPG" id="next_btn2">
								<img src="TopContents/mall/img_final/pg_btn4.jpg" id="next_btn1">
							</div>
						</div>
						<div id='info_bot2'>
							<div id='info_bot2_radio'>
								<input id='info_bot2_search_box' type='text' name='info_str'>
							</div>
							<div id='info_search_btn'>
								<a href='#'><font>검색</font></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 탭1// -->

			<!-- //탭2 -->
			<div class="cont" id="tab3">
				<div class="jq_tabonoff comm_tab2">
				
					<div id='inventory_main'>
						<div id='inven_info'>
							<font size='5'>Today</font><br />
							<br /> 오늘추천10회(총10회)<br /> 오늘 획득 0포인트 (총 50포인트)<br /> 갤러리
							1회(총1회)<br /> 인포 1회(총1회)<br /> 오늘 획득 경험치 0(0/10)<br />
						</div>

						<div id='inven_mylicence'>라이센스</div>
						<div id='inven_licence_grade'>
							<font size=15>D</font>
						</div>
						<div id='inven_licence_content'>
							추천제한<font color='#ff0000'>+0</font>, 포인트제한<font color='#ff0000'>+0</font><br />
							게시판미리보기 : <font color='#ff0000'>불가능</font><br /> 게시글 제목 특슈효과 : <font
								color='#ff0000'>불가능</font><br /> 게시글 댓글 바로보기 : <font
								color='#ff0000'>불가능</font><br />
						</div>
						<div id='inven_myitem_list'>아이템</div>
						<div id='inven_item_name'>이름</div>
						<div id='inven_item_info'>설명</div>
						<div id='inven_item_enddate'>종료일</div>
						<div id='inven_item_list'>
							<div id='item_list_name'>포인트+5</div>
							<div id='item_list_content'>포인트제한을+5올려줌</div>
							<div id='item_list_enddate'>
								<font color='#ff0000'>2015.06.18일까지</font>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
</html>