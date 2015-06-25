<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<title>sample1</title>
<link rel="stylesheet" type="text/css" href="./TopContents/Information/gesipan_list.css">
<script type="text/javascript" src="./lib/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script type="text/javascript" src ="./TopContents/Information/gesipan_list.js"></script>
</head>
<body>
<% int temp=Integer.parseInt(request.getParameter("grno"));
%>
<script>var grno = <%=temp%>;</script>
			<div class="jq_tabonoff comm_tab1" id="wrap">
				<div class="jq_tab tab_menu" id="tab1">
					<div class="li" id="li1"><a href="javascript:;" class="tit" id="tit1">SLR리뷰</a></div>
					<div class="li" id="li2"><a href="javascript:;" class="tit" id="tit2">유저사용기</a></div>
					<div class="li" id="li3"><a href="javascript:;" class="tit" id="tit3">출사정보</a></div>
				</div>
                <div class="ld1"></div>
				<div class="jq_cont tab_cont">
					<!-- //탭1 -->
					<div class="cont" id="tab2">
						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu2">
								<li><a href="javascript:;" class="tit" id="stit1">전체보기</a></li>
								<li><a href="javascript:;" class="tit" id="stit2">카메라 바디</a></li>
								<li><a href="javascript:;" class="tit" id="stit3">카메라 렌즈</a></li>
								<li><a href="javascript:;" class="tit" id="stit4">컴팩트 카메라</a></li>
                                <li><a href="javascript:;" class="tit" id="stit5">기타 악세사리</a></li>
                                <li><a href="javascript:;" class="tit" id="stit6">SRL 가이드</a></li>
							</ul>
                            
							<div class="jq_cont tab_cont" id="cont1">
								<!-- //탭1-1 -->
								<div class="cont_wrap">
									<div class="cont">
                                    GUIDE
                                    <font class="cont_desc cont_desc1">
                                    SLRCLUB에서 직접 제작한 Review, Preview, Overview, Benchmark Test 등의 컨텐츠를 올리는 곳입니다.
                                    </font>                                    
                                    </div>
                                   
								</div>
                                
								<!-- 탭1-1// -->

								<!-- //탭1-2 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc2">
                                    SLRCLUB에서 직접 제작한 DSLR 카메라 바디에 대한 리뷰 관련 컨텐츠입니다.
                                    </font> 
								</div>
                         
								<!-- 탭1-2// -->

								<!-- //탭1-3 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc3">
                                    SLRCLUB에서 직접 제작한 카메라 렌즈에 대한 리뷰 관련 컨텐츠입니다.
                                    </font> 
								</div>
								<!-- 탭1-3// -->

								<!-- //탭1-4 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc4">
                                    SLRCLUB에서 직접 제작한 컴팩트 디지털 카메라에 대한 리뷰 관련 컨텐츠입니다.
                                    </font> 
								</div>
								<!-- 탭1-4// -->
                        
                                <!-- //탭1-5 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc5">
                                    SLRCLUB에서 직접 제작한 기타 악세서리에 대한 리뷰 관련 컨텐츠입니다.
                                    </font> 
								</div>
								<!-- 탭1-5// -->
                                
                                <!-- //탭1-6 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc6">
                                    SLRCLUB에서 직접 제작한 DSLR 관련 안내 컨텐츠입니다.
                                    </font> 
								</div>
								<!-- 탭1-6// -->
							</div>
						</div>
					</div>
					<!-- 탭1// -->

					<!-- //탭2 -->
					<div class="cont" id="tab3">
						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu2">
								<li><a href="javascript:;" class="tit" id="stit7">전체보기</a></li>
								<li><a href="javascript:;" class="tit" id="stit8">악세사리</a></li>
								<li><a href="javascript:;" class="tit" id="stit9">카메라</a></li>
								<li><a href="javascript:;" class="tit" id="stit10">렌즈</a></li>
                            
							</ul>
                            
							<div class="jq_cont tab_cont" id="cont1">
								<!-- //탭1-1 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc7">
                                   SLR카메라 관련 제품에 대한 사용기를 올리는 곳입니다. 필수항목을 반드시 기재해주시기 바랍니다.
                                    </font> 
								</div>
								<!-- 탭1-1// -->

								<!-- //탭1-2 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc8">
                                    SLR카메라 관련 제품에 대한 사용기를 올리는 곳입니다. 필수항목을 반드시 기재해주시기 바랍니다.
                                    </font> 
								</div>
								<!-- 탭1-2// -->

								<!-- //탭1-3 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc9">
                                    SLR카메라 관련 제품에 대한 사용기를 올리는 곳입니다. 필수항목을 반드시 기재해주시기 바랍니다.
                                    </font> 
								</div>
								<!-- 탭1-3// -->

								<!-- //탭1-4 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc10">
                                    SLR카메라 관련 제품에 대한 사용기를 올리는 곳입니다. 필수항목을 반드시 기재해주시기 바랍니다.
                                    </font> 
								</div>
								<!-- 탭1-4// -->
                              
							</div>
						</div>
					</div>
					<!-- 탭2// -->

					<!-- //탭3 -->
					<div class="cont" id="tab4">
						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu2">
								<li><a href="javascript:;" class="tit" id="stit11">전체보기</a></li>
								<li><a href="javascript:;" class="tit" id="stit12">일반</a></li>
								<li><a href="javascript:;" class="tit" id="stit13">서울/경기</a></li>
								<li><a href="javascript:;" class="tit" id="stit14">경기도</a></li>
                                <li><a href="javascript:;" class="tit" id="stit15">전라도</a></li>
                                <li><a href="javascript:;" class="tit" id="stit16">충청도</a></li>
                                <li><a href="javascript:;" class="tit" id="stit17">강원도</a></li>
                                <li><a href="javascript:;" class="tit" id="stit18">기타지역</a></li>
                                
							</ul>
                            
							<div class="jq_cont tab_cont" id="cont1">
								<!-- //탭1-1 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font> 
								</div>
                                
								<!-- 탭1-1// -->

								<!-- //탭1-2 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font>
								</div>
                                
								<!-- 탭1-2// -->

								<!-- //탭1-3 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font>
								</div>
								<!-- 탭1-3// -->

								<!-- //탭1-4 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font>
								</div>
								<!-- 탭1-4// -->
                        
                                <!-- //탭1-5 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font>
								</div>
								<!-- 탭1-5// -->
                                
                                <!-- //탭1-6 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font>
								</div>
								<!-- 탭1-6// -->
								 <!-- //탭1-7 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font>
								</div>
								<!-- 탭1-7// -->
								 <!-- //탭1-8 -->
								<div class="cont">
									GUIDE
									<font class="cont_desc cont_desc11">
                                    지역별로 추천할만한 촬영지를 소개하는 게시판입니다.
                                    </font>
								</div>
								<!-- 탭1-8// -->
							</div>
						</div>
					</div>
					<!-- 탭3// -->
                    
                    <!-- //탭4 -->
					<div class="cont" id="tab5">
						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu2">
								<li><a href="javascript:;" class="tit">4번째탭</a></li>
								<li><a href="javascript:;" class="tit">카메라 바디</a></li>
								<li><a href="javascript:;" class="tit">카메라 렌즈</a></li>
								<li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
                                <li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
                                <li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
							</ul>
                            
							<div class="jq_cont tab_cont" id="cont1">
								<!-- //탭1-1 -->
								<div class="cont">
									GUIDE1
                                    <div>11</div>
								</div>
                                
								<!-- 탭1-1// -->

								<!-- //탭1-2 -->
								<div class="cont">
									GUIDE2
								</div>
								<!-- 탭1-2// -->

								<!-- //탭1-3 -->
								<div class="cont">
									GUIDE3
								</div>
								<!-- 탭1-3// -->

								<!-- //탭1-4 -->
								<div class="cont">
									GUIDE4
								</div>
								<!-- 탭1-4// -->
                        
                                <!-- //탭1-5 -->
								<div class="cont">
									GUIDE5
								</div>
								<!-- 탭1-5// -->
                                
                                <!-- //탭1-6 -->
								<div class="cont">
									GUIDE6
								</div>
								<!-- 탭1-6// -->
							</div>
						</div>
					</div>
					<!-- 탭4// -->
                    
                    <!-- //탭5 -->
					<div class="cont" id="tab6">
						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu2">
								<li><a href="javascript:;" class="tit">5번째탭</a></li>
								<li><a href="javascript:;" class="tit">카메라 바디</a></li>
								<li><a href="javascript:;" class="tit">카메라 렌즈</a></li>
								<li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
                                <li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
                                <li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
							</ul>
                            
							<div class="jq_cont tab_cont" id="cont1">
								<!-- //탭1-1 -->
								<div class="cont">
									GUIDE1
                                    <div>11</div>
								</div>
                                
								<!-- 탭1-1// -->

								<!-- //탭1-2 -->
								<div class="cont">
									GUIDE2
								</div>
                                
								<!-- 탭1-2// -->

								<!-- //탭1-3 -->
								<div class="cont">
									GUIDE3
								</div>
								<!-- 탭1-3// -->

								<!-- //탭1-4 -->
								<div class="cont">
									GUIDE4
								</div>
								<!-- 탭1-4// -->
                        
                                <!-- //탭1-5 -->
								<div class="cont">
									GUIDE5
								</div>
								<!-- 탭1-5// -->
                                
                                <!-- //탭1-6 -->
								<div class="cont">
									GUIDE6
								</div>
								<!-- 탭1-6// -->
							</div>
						</div>
					</div>
					<!-- 탭5// -->
                    <!-- //탭6 -->
					<div class="cont" id="tab7">
						<div class="jq_tabonoff comm_tab2">
							<ul class="jq_tab tab_menu2">
								<li><a href="javascript:;" class="tit">6번째탭</a></li>
								<li><a href="javascript:;" class="tit">카메라 바디</a></li>
								<li><a href="javascript:;" class="tit">카메라 렌즈</a></li>
								<li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
                                <li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
                                <li><a href="javascript:;" class="tit">컴팩트 카메라</a></li>
							</ul>
                            
							<div class="jq_cont tab_cont" id="cont1">
								<!-- //탭1-1 -->
								<div class="cont">
									GUIDE1
                                    <div>11</div>
								</div>
                                
								<!-- 탭1-1// -->

								<!-- //탭1-2 -->
								<div class="cont">
									GUIDE2
								</div>
                                
								<!-- 탭1-2// -->

								<!-- //탭1-3 -->
								<div class="cont">
									GUIDE3
								</div>
								<!-- 탭1-3// -->

								<!-- //탭1-4 -->
								<div class="cont">
									GUIDE4
								</div>
								<!-- 탭1-4// -->
                        
                                <!-- //탭1-5 -->
								<div class="cont">
									GUIDE5
								</div>
								<!-- 탭1-5// -->
                                
                                <!-- //탭1-6 -->
								<div class="cont">
									GUIDE6
								</div>
								<!-- 탭1-6// -->
							</div>
						</div>
					</div>
					<!-- 탭6// -->
				</div>
                <div id="list_wrap">
                <%if(temp==1){%>
                    <%@include file='./SlrReview/info_slr_1.jsp'%>
                <%} %> 
                <%if(temp==2){%>
                    <%@include file='./UserReview/info_slr_7.jsp'%>
                <%} %>    
                <%if(temp==3){%>
                    <%@include file='./Location/info_slr_11.jsp'%>
                <%} %>   
                </div>
			</div>
        
<script>init()</script>
</body>
</html>