<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="./imgs/Information/bar.png" id='cont_bar'>
                    <div id='result'></div>
                    <div id="list">
                        <div id="list_gongji">
                            <div id="g_rno">
                                <font class="gongji_text" id="gongji_rno">공지</font>
                            </div>
                            <div id="g_title">
                                <font class="gongji_text" id="gongji_title">
                                    <a class="list_a" href="#">[공지] SLR리뷰 운영 안내</a>
                                    <font id="gongji_reply">[191]</font>
                                </font>
                            </div>
                            <div id="g_id">
                                <font class="gongji_text" id="gongji_id">
                                    SLR
                                </font>
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
                                <font class="gesi_text" id="gesi_title">
                                    <a class="list_a" href="mainSlr.jsp?content=TopContents/Information/gesipan_view.html">[14] SLR리뷰 운영 안내</a>
                                <font id="gesi_reply">[191]</font>
                                </font>
                            </div>
                            <div id="list_id">
                                <font class="gesi_text" id="gesi_id">
                                    <a class="list_a" id="list_aid" href="#">사용자아이디</a>
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
                        <div id="list_bot">
                            <div id="btn_left">
                                <div id="prev_btn"><a href="" id="prev_page">이전페이지</a></div>
                                <div id="next_btn"><a href="" id="next_page">다음페이지</a></div>
                            </div>
                            <div id="page_img">
                                <img src="./imgs/Information/pg_btn2.jpg" id="prev_btn1">
                                <img src="./imgs/Information/pg_btn1.JPG" id="prev_btn2">
                                
                                <div id="pg_num">
                                    <a href="#">
                                    1</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    2</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    3</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    4</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    5</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    6</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    7</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    8</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    9</a>
                                    <img src="http://media.slrclub.com/main/2012/bbs/list_num_vline2.gif" width="17" height="6" alt="|">
                                    <a href="#">
                                    10</a>
                                </div>
                                <img src="./imgs/Information/pg_btn3.JPG" id="next_btn2">
                                <img src="./imgs/Information/pg_btn4.jpg" id="next_btn1">
                                
                            </div>
                            <div id="btn_right">
                                <div id="refresh_btn"><a href="javascript:location.reload(true)" id="refresh_page">새로고침</a></div>
                                <div id="write_btn"><a href="mainSlr.jsp?content=TopContents/Information/gesipan_write.html" id="write_page">글쓰기</a></div>
                            </div>
                        </div>
                        
                         <div id='info_bot2'>
                            <div id='info_bot2_radio'>
                                <label>
                                    <input type='radio' name='info_search'><font class='info_bot2_text'>이름</font>
                                </label>
                                <label>
                                    <input type='radio' name='info_search'><font class='info_bot2_text'>아이디</font>
                                </label>
                                <label>
                                    <input type='radio' name='info_search'><font class='info_bot2_text'>제목</font>
                                </label>
                                <label>
                                    <input type='radio' name='info_search'><font class='info_bot2_text'>내용</font>
                                </label>
                                <input id='info_bot2_search_box' type='text' name='info_str'>
                            </div>
                            <div id='info_search_btn'><a href='#'><font>검색</font></a></div>
                            <div id='info_bot2_announce'>
                            <font>
                                최근자료가 아닌 경우 [ 계속 검색 ]으로 찾을 수 있습니다.
                            </font>
                            </div>
                        </div>
                    </div>
</body>
</html>