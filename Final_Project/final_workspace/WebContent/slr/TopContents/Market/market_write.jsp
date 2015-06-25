<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./TopContents/Market/market_CSS.css">

</head>
<body>
<div id="srl_main_wrap">
		
			

			<div id="srl_market_jemok">
				<div id="srl_jemok_title" style="color: red">*</div>
				<div id="srl_jemok_title2">제목</div>
				<div id="srl_jemok_title3">
					<input type="text" name="market_jemok" size=100
						style="height: 22px; border: 1px solid #ff0000;">
				</div>
			</div>

			<div id="srl_market_jemok_under">카메라 관련 매물의 등록시에는 정확한 제품명을
				등록해주세요. 더욱 신속한 거래를 도와드립니다.</div>

			<div id="srl_market_iteminfo">
				<div id="srl_iteminfo" style="color: red">*</div>
				<div id="srl_iteminfo2">제품정보</div>
				<div id="srl_iteminfo3">
					<label><input type="radio" name="market_iteminfo" value="카메라관련">카메라관련</label>&nbsp;&nbsp;&nbsp;&nbsp;
					<label><input type="radio" name="market_iteminfo" value="기타">기타</label>
				</div>

			</div>

			<div id="srl_market_hidemain">
				<div id="srl_market_category">
					<div id="srl_category">카테고리 :</div>
					<div id="srl_category2">카메라 관련</div>
				</div>

				<div id="srl_market_categoryselect">카테고리 선택</div>

				<div id="srl_market_categoryselect2">
					<label><input type="radio" name="categoryselect" value="카메라">카메라</label>
					<label> <input type="radio" name="categoryselect" value="렌즈">렌즈</label>
						<label> <input type="radio" name="categoryselect" value="필터">필터 </label>
						<label><input type="radio" name="categoryselect" value="스트로보">스트로보 </label>
						<label><input type="radio" name="categoryselect" value="액세서리">액세서리</label>
						<label> <input type="radio" name="categoryselect" value="삼각대">삼각대</label>
				</div>
			</div>

			<hr color=#E6E6E6 width="850">

			<div id="srl_market_category_under">
				<div id="srl_under_left">상세 정보 입력 ㅣ</div>
				<div id="srl_under_right">
					<font color="red">*</font> 표시는 필수 입력사항 입니다.
				</div>

			</div>

			<div id="srl_market_sellprice">
				<div id="zxcvzxcv">
					<div id="srl_sellprice1">
						<font color="red">*</font> 판매가격
					</div>
					<div id="srl_sellprice2">
						<input type="text" name="market_sellprice" size=20
							style="height: 22px;"> 원
					</div>
				</div>
				<div id="zxcvzxcv2">
					<div id="srl_jungpoom">
						<div id="srl_jungpoom2">
							<font color="red">*</font> 정품여부
						</div>
						<div id="srl_jungpoom3">
							<label><input type="radio" name="jungpoom" value="정품">정품</label>
						</div>
						<div id="srl_jungpoom4">
							<label><input type="radio" name="jungpoom" value="병행수입">병행 수입</label>
						</div>
					</div>
				</div>
			</div>

			<div id="srl_market_buyprice">
				<div id="zxcvzxcv3">
					<div id="srl_buyprice2">
						<font color="red"> </font> 구입가격
					</div>
					<div id="srl_buyprice3">
						<input type="text" name="market_buyprice" size=20
							style="height: 22px;"> 원
					</div>
				</div>
				<div id="zxcvzxcv4">
					<div id="srl_buydate">
						<div id="srl_buydate2">
							<font color="red"> </font> 구매시기
						</div>
						<div id="srl_buydate3">
							<input type="text" name="buydate" style="height: 22px;" size=3>년
							<input type="text" name="buydate" style="height: 22px;" size=2>월
						</div>

					</div>
				</div>
			</div>

			<div id="srl_market_exterior">
				<div id="zxcvzxcv5">
					<div id="srl_ex1">
						<font color="red"> </font> 외관상태
					</div>
					<div id="srl_ex2">
						<select name="job" size="1">
							<option value="선택안함" selected>선택안함</option>
							<option value="신품수준">신품수준</option>
							<option value="양호">양호</option>
							<option value="약간손상">약간손상</option>
							<option value="심한손상">심한손상</option>
							<option value="일부파손">일부파손</option>
						</select>
					</div>
				</div>
				<div id="zxcvzxcv6">
					<div id="srl_ex3">
						<div id="srl_zzzz">
							<font color="red"> </font> 기능작동상태
						</div>
						<div id="srl_ex4">
							<select name="job" size="1">
								<option value="선택안함" selected>선택안함</option>
								<option value="정상">정상</option>
								<option value="부분고장">부분고장</option>
								<option value="동작불가">동작불가</option>

							</select>
						</div>

					</div>
				</div>
			</div>

			<div id="srl_market_exple">
				<div id="srl_exple2">
					기능작동 <br>상태설명
				</div>
				<div id="srl_exple3">
					<textarea cols="80" rows="5"></textarea>
				</div>

			</div>

			<div id="srl_market_phone">
				<div id="srl_phone2">
					<font color="red">*</font> 연락처
				</div>
				<div id="srl_phone3">
					<input type="text" size="4" name="phone1"> - <input
						type="text" size="4" name="phone2"> - <input type="text"
						size="4" name="phone3">
				</div>

			</div>


 
			


			<div id="srl_market_taxprice">
				<div id="srl_taxprice" style="color: red">*</div>
				<div id="srl_taxprice2">택배배송비</div>
				<div id="srl_taxprice3">
					<label><input type="radio" name="market_taxprice" value="">구매자
					가능</label>&nbsp;&nbsp;&nbsp;&nbsp; <label><input type="radio"
						name="market_taxprice" value="판메자">판매자</label>

				</div>

			</div>

  <div id='info_write_wrap'>
        <div class='info_write_announce' id='info_write_announce1'>
          제품이미지와 구성품 세부사항을 기재해 주시기 바랍니다.
            </div>
    
      
        <div id="info_write_body">
            <div id='info_write_content'>
               
                <font class='info_write_title_option' id='info_write_title_option'>내용</font>
                <textarea id='info_write_textarea' size="100">
                
                </textarea>
            </div>
            <div id='info_write_upload'>
                <font class='info_write_title_option' id='info_write_title_upload'>업로드</font>
                <img src="./TopContents/Market/img/inf_upload.JPG">
            </div>
        </div>
        
        <div id='info_wirte_btns'>
            <div class='info_wirte_btn' id='info_wirte_btn1'>
                <input type="button" value='미리보기'class='info_bot_btn' id='write_btn1'>
            </div>
            <div class='info_wirte_btn' id='info_wirte_btn2'>
                <input type="button" value='취소하기'class='info_bot_btn' id='write_btn2'
                onClick="location.href='mainSlr.jsp?content=TopContents/Market/market_list.jsp'">
            </div>
            <div class='info_wirte_btn' id='info_wirte_btn3'>
                <input type="button" value="매물등록" class='info_bot_btn' id='write_btn3'
                onClick="location.href='mainSlr.jsp?content=TopContents/Market/market_list.jsp'">
            </div>

        </div>
    </div>
</div>
	
</body>
</html>