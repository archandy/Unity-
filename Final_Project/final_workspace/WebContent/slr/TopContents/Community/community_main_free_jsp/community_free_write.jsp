<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info_write</title>
<script src='js/community/community.js'></script>
<link rel='stylesheet' href='TopContents/Community/community_main_free_jsp/css/community_write.css' type='text/css'>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
    <div id='info_write_wrap'>
    <form name='frm_insert' method='post' enctype='multipart/form-data'>
        <div class='info_write_announce' id='info_write_announce1'>
            <font id='i_w_a1_text1'>
                사용기강좌 운영기준</font>에 부합하지 않는 게시물은 관리자에 의해 등록대기게시판으로 이동또는
                삭제될 수 있습니다.
            </div>
        <div class='info_write_announce' id='info_write_announce2'>
        본 게시판은 타 게시판보다 훨씬 엄격한 관리 및 추가 감점이
            있으므로 등록하시기전 다시 한번 확인을 부탁드립니다.
        </div>
        <div id='info_write_option'>
            <font class='info_write_title_option'>옵션</font>
            <div id='info_write_form'>
                <!-- <form name='info_write_frm'> -->
                    <label><font class='info_write_desc'>HTML사용</font></label>
                    <input class='info_write_check' name='html_option' type='checkbox'>
                    <label><font class='info_write_desc'>외부검색노출</font></label>
                    <input class='info_write_check' name='search_option' type='checkbox'>
                <!-- </form> -->
            </div>
        </div>
        <div id='info_write_title'>
            <font class='info_write_title_option'>제목</font>
            <input id='info_write_title_input_text' type='text' size='100' name='jemok'>
        </div>
        <div id="info_write_body">
            <div id='info_write_content'>
                <div id='info_write_content_announce'>
                    <img src="imgs/Community/annc1.JPG" id='i_w_c_a_img' width="55px">
                    <div class='info_write_announce' id='info_write_announce2'>
                    저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시물은 이용약관 및 
                    관련법률에 의해 제재를 받으실 수 있습니다.
                    </div>
                </div>
                <font class='info_write_title_option' id='info_write_title_option'>내용</font>
                <textarea id='info_write_textarea' size='100' name='Contents_txt'>
                </textarea>
            </div>
            <div id='info_write_upload'>
                <font class='info_write_title_option' id='info_write_title_upload'>업로드</font>
                <img src="imgs/Community/inf_upload.JPG" name='CONTENTS_PICTURE'>
            </div>
        </div>
        
        <div id='info_wirte_btns'>
            <div class='info_wirte_btn' id='info_wirte_btn1'>
                <input type="button" value='미리보기'class='info_bot_btn' id='write_btn1'>
            </div>
            <div class='info_wirte_btn' id='info_wirte_btn2'>
                <input type="button" value='취소하기'class='info_bot_btn' id='write_btn2'>
            </div>
            <div class='info_wirte_btn' id='info_wirte_btn3'>
                <input type="button" value="작성완료" class='info_bot_btn' id='write_btn3'>
            </div>

        </div>
        </form>
    </div>
    <script>
    communitywrite();
    </script>
</body>
</html>