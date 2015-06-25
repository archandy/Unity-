<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Info_write</title>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
  <script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
  <link rel="stylesheet" href="../../../lib/jquery-ui.css">
    <link rel="stylesheet" href="../../../lib/jquery-ui.theme.css">
    <link rel="stylesheet" href="../../../lib/jquery-ui.structure.css">
  
    <style>
        #info_write_wrap{width:850px;}
        .info_write_announce{font-size: 75%;margin-top:3px;}
        #info_write_announce2{margin-bottom: 12px;}
        #i_w_a1_text1{color:blue;}
        .info_write_title_option{font-size:75%;font-weight: bolder;margin-left: 15px;}
        #info_write_option{background:#F5F5F5;height:30px;border-bottom: 1px solid #EAEAEA;border-top: 1px solid #EAEAEA;}
        #info_write_option font, #info_write_select,#info_write_form{padding-top: 3px; display:inline-block;}
        #info_write_select{margin-left:15px;}
        #info_write_select #info_write_headoption{font-size:12px;width:77px;}
        #info_write_form font{font-size: 75%;margin-left: 22px;}
        #info_write_form .info_write_check{position:relative;top:3px;}
        #info_write_title{padding-top:3px;padding-bottom:5px;border-bottom: 1px solid #EAEAEA;}
        #info_write_title_option{position:relative;bottom: 175px;}
        #info_write_title #info_write_title_input_text{margin-left: 15px;border:1px solid #EAEAEA;height:20px;width:788px;}
        #info_write_body{background:#FBFBFB;}
        #info_write_content_announce{margin-left: 60px; background:#E8E8E8;height:25px;margin-top:5px;margin-bottom:5px;}
        #info_write_content_announce img,#info_write_announce2{display: inline-block;}
        #info_write_content_announce img{position:relative;top:3px;}
        #info_write_textarea{margin-left:12px;width:780px;height:360px;border:1px solid #CCCCCC;}
        #info_write_upload{margin-top:20px;}
        #info_write_upload img{margin-bottom:30px;}
        #info_write_title_upload{position:relative;bottom:100px;}
        #info_wirte_btns{margin-top:35px;}
        .info_bot_btn{height:25px;
            width:65px;
            font-size: 72%;
            background:#f7f7f7;
            border:1px solid #B2B2B2;
            border-radius: 3px;
            margin:1px;}
        #info_wirte_btn1{display:inline-block;float:left}
        #info_wirte_btn2, #info_wirte_btn3{float:right;margin:0;}
        #write_btn3{background:#666666;color:#ffffff;}
        .k-header{width:500px;}
        #files{200px;}
    </style>
</head>
<body>
 <div id='info_write_wrap'>
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
            <div id='info_write_select'>
                <select id="info_write_headoption">
                    <optgroup>
                        <option class='s_option' value='0' >전체보기</option>
                        <option class='s_option' value='1'>악세사리</option>
                        <option class='s_option' value='1'>렌즈</option>
                        <option class='s_option' value='1'>카메라</option>
                    </optgroup>
                </select> 
            </div>
            <div id='info_write_form'>
                <form name='info_write_frm'>
                    <font class='info_write_desc'>HTML사용</font>
                    <input class='info_write_check' name='html_option' type='checkbox'>
                    <font class='info_write_desc'>외부검색노출</font>
                    <input class='info_write_check' name='search_option' type='checkbox'>
                </form>
            </div>
        </div>
        <div id='info_write_title'>
            <font class='info_write_title_option'>제목</font>
            <input id='info_write_title_input_text' type='text' size='100'>
        </div>
        <div id="info_write_body">
            <div id='info_write_content'>
                <div id='info_write_content_announce'>
                    <img src="./imgs/annc1.JPG" id='i_w_c_a_img' width="55px">
                    <div class='info_write_announce' id='info_write_announce2'>
                    저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시물은 이용약관 및 
                    관련법률에 의해 제재를 받으실 수 있습니다.
                    </div>
                </div>
                <font class='info_write_title_option' id='info_write_title_option'>내용</font>
                <textarea id='info_write_textarea' size='100'>
                </textarea>
            </div>
            <div id='info_write_upload'>
            <font class='info_write_title_option' id='info_write_title_upload'>업로드</font>
                <div id="upload_btn">
                    <div href="" id='upload_1'>
                        <button>이미지추가</button>
                    </div>
              
                    <div id='upload_2'>
                        선택삭제
                    </div>
                    <div id='upload_3'>
                        새로고침
                    </div>
                    <div id='upload_4'>
                        리스트보기
                    </div>
                </div>
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
    </div>
</body>
</html>