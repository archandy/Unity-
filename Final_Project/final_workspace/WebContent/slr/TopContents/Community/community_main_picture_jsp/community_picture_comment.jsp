<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Comment</title>
<link rel='stylesheet' href='TopContents/Community/community_main_picture_jsp/css/community_comment.css' type='text/css'>
  <style>
    #info_body_wrap{margin:0;padding: 0;}
    #info_body_wrap{
        width:850px;
    }
    #info_body_top{
        border:1px solid #EAEAEA;
        background: #F3F3F3;
        width:850px;
        height:20px;
    }
    #body_title1, #body_title2, #body_title3,
    #body_title4, #body_title5, #body_title6,
    .info_body_bar
    {
        display: inline-block;
    }
    #body_title1, #body_title2, #body_title3,
    #body_title4, #body_title5, #body_title6
    {
       padding-left:12px;
        padding-right:12px;
    }
    #body_title1{
        width:16px;
    }
    #body_title2{
        width:500px;

    }
    #body_title3{
        width:85px;
    }
    #body_title4{
        width:40px;
    }
    #body_title5{
        width:20px;
    }
    #body_title6{
        width:20px;
    }
    .info_body_bar{
        height:6px;
        border:1px solid #E5E5E5;
        padding-bottom:3px;
        position:relative;
        top:-0px;
    }
    #info_body_bar3{
        margin-left:1px;
        margin-right:-25px;
    }
    #info_body_bar4{
        margin-left:-1px;
        margin-right:-10px;
    }
    #info_body_bar5{
        margin-left:-1px;
    }
    .info_body
    {
        position: relative;
        top:-20px;
        left: 12px;
        font-size:70%;
        font-weight: bold;
        color:#737373;
    }
    #info_body_text1,#info_body_text2{
    padding-right:272px;
    }
    #info_body_text3{
    padding-left:20px;
    }
    #info_body_text4{
    padding-left:50px;
    }
    #info_body_text5{
    padding-left:16px;
    }
    #info_body_text6{
    padding-left:20px;
    }

    #info_announce{
        height:30px;
        border-bottom:1.5px solid #EAEAEA;
    }
    #info_announce:hover{
    background:#E9F2FF;
    }
    .info_announce{
        position:relative;
        top:3px;
        left:10px;
        font-size:40%;
    }
    /*-----------------------MID-----------------*/
        
    .info_mid_board{
        display:inline-block;
        height:26px;
       
    }
        #info_mid_board{
         border-bottom:1.5px solid #EAEAEA;
        }
    #info_mid_board:hover{
        background:#E9F2FF;
        
    }
    #info_srl_board_rno{
        margin-left:5px;
        width:40px;
    }
    #info_srl_board_title{
        width:565px;
    }
    #info_srl_board_id{
        width:75px;
    }
    #info_srl_board_date{
        width:60px;
    }
    #info_srl_board_like{
        width:30px;
    }
    #info_srl_board_cnt{
        width:auto;
    }
    #info_mid_text1{
        font-weight: bold;
        font-size: 75%;
        color:#4F87C7;
    }
    #info_announce_text2{
        font-weight: bold;
        font-size: 75%;
        color:#000000;        
    }
    #info_mid_text2{
        font-weight:none;
        font-size: 75%;
        color:#000000;        
    }
    #info_mid_title, #info_mid_a_id{
        text-decoration: none;
        color:black;
    }
   
    #info_mid_id{
    font-size: 70%;
    }
    #info_mid_title:hover{
        text-decoration: underline;
        color:red;
    }
    #info_mid_text3{
        font-weight: bold;
        font-size: 75%;
        color:#000000;
    }
    /*----------------------BOT----------------------*/
    #info_bot{
        margin-top:5px;
    }
    .info_bot1{
        display: inline-block;
    }
    .info_bot_btn{
        height:25px;
        width:72px;
        font-size: 72%;
        background:#f7f7f7;
        border:1px solid #B2B2B2;
        border-radius: 3px;
        margin:1px;
    }
     #pg_btn1{
        background: url(img/pg_btn2.jpg) no-repeat;
        background-size: contain;
        border:1px;
    }
    #pg_btn2{
        background: url(img/pg_btn1.jpg) no-repeat;
        background-size: contain;
        border:1px;
    }
    #pg_btn3{
        background: url(img/pg_btn4.jpg) no-repeat;
        background-size: contain;
        border:1px;
    }
    #pg_btn4{
        background: url(img/pg_btn3.jpg) no-repeat;
        background-size: contain;
        border:1px;
    }
    #info_bot_btn1, #info_bot_btn2{
    float: left;
    }
    #pg_btn1{
        margin-left:70px;
    }
    #pg_btn1,#pg_btn2,#pg_btn3,#pg_btn4{
        width:20px;
        height:20px;
        border-radius: 0;
        font-weight: bold;
    }
    #info_bot_btn3, #info_bot_btn4{
    float: right;
    }
    .pg_divide{
        position:relative;
        top:-5px;
        font-size: 80%;
    }
    .pg_num{
        text-decoration: none;
    }
    .pg_num:hover{
        text-decoration: underline;
        color:#a9c2FF;
    }
     #info_bot2{margin-top:10px;float:right;position:relative;right:-160px;}
    .info_bot2_text{font-size: 75%;}
        #info_bot2_radio, #info_search_btn{display:inline-block;}
        #info_bot2_radio input{margin:5px;}
        #info_bot2_radio #info_bot2_search_box{height:16px;width:140px;}
        #info_search_btn{font-size: 70%;color:white;background:#A6A6A6;position:relative;left:-12px;top:-2px;
        padding-left:5px;height:20px;width:30px;}
        #info_search_btn a{text-decoration: none;color:white;}
        #info_bot2_announce font{font-size: 70%;float:right;margin-right:10px;}
    </style>
</head>
<body>
	<div class="slr_comment">
		<div class='slr_view'>
		<div id='slr_view2'>광고</div>
		<div class="slr_comment_open">
			<span class="slr_comment_cnt">총 
			<span id="slrcnt">0</span>
			개의	댓글이 있습니다.</span> 
			<span id="slr_comment_close"> <img alt="댓글닫기" src="imgs/Community/bt_cmt_close.gif" width="76" height="12" /></span>
			</div>
			</div>	
		
	<div id="comment_pgc">
		<div id='comment_clr1'><img width="63" height="23" alt="새로고침" src="imgs/Community/bt_cmt_refresh.gif" /></div> 
		<div id='comment_clr2'><input type="text" value="" id="ksearch" autocomplete="Off" class="search" role="textbox" aria-autocomplete="list" aria-haspopup="true" size='18'></div> 
		<div id='comment_clr3'><img width="43" height="23" alt="댓글검색" src="imgs/Community/bt_cmt_search.gif"></div>
		<div id='comment_clr4'><input type="text" class="txt_st" value="50" id="slrno" size='1'></div>
		<div id='comment_clr5'><img width="63" height="23" alt="출력수 설정" src="imgs/Community/bt_cmt_count.gif"></div>
	</div>
	<div id = 'comment_ID'>
	<hr/>
		<div id = 'comment_getID'><B>아이디</B></div>
		<div id = 'comment_text'><textarea id='comment_TA' cols="80" rows="5" name='comment' style="overflow-y:scroll"></textarea></div>
		<div id = 'comment_text1'><img src='imgs/Community/bt_confirm.gif'></div>
	</div>	
</div>
<div id='info_body_wrap'>
        <div id='info_bot'>
            <div class='info_bot1' id='info_bot_btn1'>
                <input type="button" value="이전페이지" class='info_bot_btn'>
            </div>
            <div class='info_bot1' id='info_bot_btn2'>
                <input type="button" value="다음페이지" class='info_bot_btn'>
            </div>
            <div class='info_bot1' id='info_bot_pg1'>
                <input type="button"  class='info_bot_btn' id='pg_btn1'>
            </div>
            <div class='info_bot1' id='info_bot_pg2'>
                <input type="button"  class='info_bot_btn' id='pg_btn2'>
            </div>
            <img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>1</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>2</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>3</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>4</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>5</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>6</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>7</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>8</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>9</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
            <a href='#' class='pg_num'><font class='pg_divide'>10</font></a><img class='pg_divide' src='imgs/Community/list_num_vline2.gif'>
          
            
            
            <!--page분리파트-->
            <div class='info_bot1' class='info_bot_btn' id='info_bot_pg3'>
                <input type="button" class='info_bot_btn' id='pg_btn3'>
            </div>
            <div class='info_bot1' id='info_bot_pg4'>
                <input type="button" class='info_bot_btn' id='pg_btn4'>
            </div>
            <div class='info_bot1' id='info_bot_btn3'>
            <form action="" name="write_frm" method="post">
                <input type="button" value="글쓰기" class='info_bot_btn' onClick="location.href='mainSlr.jsp?content=TopContents/Community/community_photo_list_write.jsp'">
            </form>
            </div>
            <div class='info_bot1' id='info_bot_btn4'>
                <input type="submit" value="새로고침" class='info_bot_btn'>
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