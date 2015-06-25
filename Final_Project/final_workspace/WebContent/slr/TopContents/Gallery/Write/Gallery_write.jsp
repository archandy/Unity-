<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info_write</title>
<script src='js/GalleryJS/Gallery.js'></script>
<link rel='stylesheet' href='TopContents/Gallery/Write/Gallery_write.css' type='text/css'>
<style>

</style>
</head>
<body>
    <div id='info_write_wrap'>
    	<form name='frm_insert' method='post' enctype='multipart/form-data'
    	 action="mainSlr.jsp?content=TopContents/Gallery/Write/Galleryt_write_result.jsp">
        <div class='info_write_announce' id='info_write_announce1' style="color: #999999;">
            심혈을 기울여 찍은 작품을 선정해서 전시하는 공간입니다. <font color="orange">등록시 분류선택 주의</font><br>
작품갤러리는 디지털SLR 기종으로 촬영한 사진만 올리실 수 있으며 타기종의 경우 주제/습작갤러리를 이용해주시기 바랍니다.
            </div>
        <div class='info_write_announce' id='info_write_announce2'>
       미성년자 및 비회원, 레드리본 필터를 설정한 회원은 "누드" 카테고리를 열람하실 수 없습니다.
        </div>
        <div id='info_write_option'>
            <font class='info_write_title_option' color="#999999">카테고리</font>
            <div id='info_write_select'>
                <select id="info_write_headoption" name='categoryOption' style="background: #414141; border: 1px solid #777777; color: #999999">
                   
                        <option class='s_option' value='0'>일상/스냅</option>
                        <option class='s_option' value='1'>모델/연출</option>
                        <option class='s_option' value='2'>아이/가족</option>
                        <option class='s_option' value='3'>자연/풍경</option>
                        <option class='s_option' value='4'>생태/동식물</option>
                        <option class='s_option' value='5'>사물/제품</option>
                        <option class='s_option' value='6'>건축/예술품</option>
                        <option class='s_option' value='7'>스포츠/취미</option>
                        <option class='s_option' value='8'>여행/문화</option>
                        <option class='s_option' value='9'>누드</option>
                    
                </select> 
            </div>
            <div id='info_write_select'>
                <select id="info_write_headoption" name='categoryOption2' style="background: #414141; border: 1px solid #777777; color: #999999">
                   
                        <option class='s_option' value='0'>작가 갤러리</option>
                        <option class='s_option' value='1'>작품 갤러리</option>
                        <option class='s_option' value='2'>습작 갤러리</option>
                    
                </select> 
            </div>
            <div id='info_write_form'>
<!--                 <form name='info_write_frm'> -->
                    <label><font class='info_write_desc'  style="color: #999999;">HTML사용</font></label>
                    <input class='info_write_check' name='html_option' type='checkbox'>
                    <label><font class='info_write_desc' style="color: #999999;">외부검색노출</font></label>
                    <input class='info_write_check' name='search_option' type='checkbox'>
<!--                 </form> -->
            </div>
        </div>
        <div id='info_write_title'>
            <font class='info_write_title_option' color="#999999" >제목</font>
            <input id='info_write_title_input_text' name='jemok' type='text' size='1'  style="background: #414141; border: 1px solid #777777; color: #999999">
        </div>
        <div id="info_write_body">
            <div id='info_write_content'>
                <div id='info_write_content_announce'>
                    <img src="TopContents/Gallery/Write/annc1.JPG" id='i_w_c_a_img' width="55px">
                    <div class='info_write_announce' id='info_write_announce2'>
                    저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시물은 이용약관 및 
                    관련법률에 의해 제재를 받으실 수 있습니다.
                    </div>
                </div>
                <font class='info_write_title_option' id='info_write_title_option' color="#999999">내용</font>
                <textarea id='info_write_textarea' name='contents_txt' style="background: #414141; border: 1px solid #777777; color: #999999">
                </textarea>
            </div>
            <div id='info_write_upload'>
                <font class='info_write_title_option' id='info_write_title_upload' color="#999999">업로드</font>
				<input type="file" id='uploadFile' name='picture' style="color: #999999">
            </div>
        </div>
        
        <div id='info_wirte_btns'>
            <div class='info_wirte_btn' id='info_wirte_btn1'>
                <input type="button" value='미리보기'class='info_bot_btn' id='write_btn1' style="color: #999999">
            </div>
            <div class='info_wirte_btn' id='info_wirte_btn2'>
                <input type="button" value='취소하기'class='info_bot_btn' id='write_btn2' style="color: #999999">
            </div>
            <div class='info_wirte_btn' id='info_wirte_btn3'>
                <input type="submit" value="작성완료" class='info_bot_btn' id='write_btn3' style="color: #999999">
            </div>
            	<%
            	String sId = (String)session.getAttribute("id");
            	String sNick = (String)session.getAttribute("nick");
            	System.out.println("sId = "+sId);
            	System.out.println("sNick = "+sNick);
            	%>
				<input type='hidden' value='<%=sId %>' name='write_btn4_id'>
        </div>
        </form>
        
    </div>
    
    <script>
//     write_btn3();
	</script>
</body>
</html>