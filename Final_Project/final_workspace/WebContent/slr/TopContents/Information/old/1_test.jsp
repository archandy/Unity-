<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../../lib/jquery-2.1.4.js"></script>
<script src="../../lib/jquery-ui.js"></script>
<script type="text/javascript">
 
$(document).ready(function() {
 
    //Default Action
    $(".tab_content").hide(); //Hide all content
    $("ul.tabs li:first").addClass("active").show(); //Activate first tab
    $(".tab_content:first").show(); //Show first tab content
     
    //On Click Event
    $("ul.tabs li").click(function() {
        $("ul.tabs li").removeClass("active"); //Remove any "active" class
        $(this).addClass("active"); //Add "active" class to selected tab
        $(".tab_content").hide(); //Hide all tab content
        var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
        $(activeTab).fadeIn(); //Fade in the active content
        return false;
    });
});
</script>
<style>
.container {width: 850px; margin:0;padding:0;}
ul.tabs {
    margin: 0px;
    padding: 0;
    float: left;
    list-style: none;
    height: 25px;
    border-bottom: 1px solid #f2f2f2;
    border-left:px solid;
    width: 850px;
    position: relative;
    bottom:3px;
}
ul.tabs li {
    width:100px; 
    float: left;
    margin-right: 2px;
    text-align: center;
    height: 25px;
    line-height: 25px;
    border: 1px solid #f1f1f1;
    margin-bottom: 0px;
    background: #F0F0F0;
    overflow: hidden;
    position: relative;
    top:-1px;
}
#content_guide{font-size: .8em;width:850px;border:1px solid #f1f1f1;position:relative;top:0px;background: #f9f9f9;height:50px;}
ul.tabs li a {
    text-decoration: none;
    color: #000;
    display: block;
    font-size: .75em;
    font-weight: bold;
}
ul.tabs li a:hover {

}   
html ul.tabs li.active, html ul.tabs li.active a:hover  {
    background: #fff;
    border-bottom: 1px solid #ffffff;
}
.tab_container {
    border: 0px solid #999;
    border-top: none;
    clear: both;
    float: left; 
    width: 850px;
    background: #fff;
}
    #content_mid{;margin-top:10px;}
</style>
</head>
<body>
<%
String rightContent = "info_body_content.html";
%>
<div class="container">
  <ul class="tabs">
    <li><a href="#tab1">전체보기</a></li>
    <li><a href="#tab2">악세사리</a></li>
    <li><a href="#tab3">카메라</a></li>
    <li><a href="#tab4">렌즈</a></li>
  </ul>
    
  <div class="tab_container">
    <div id="tab1" class="tab_content">
    <div id="content_guide">GUIDE1</div>
    <div id="content_mid">
     <jsp:include page="<%=rightContent %>"/>
    </div>
    
    </div>
    <div id="tab2" class="tab_content">
    <div class="announce">GUIDE2</div>
      <h2>Heading 2</h2>
      <p> Content 2</p>
    </div>
    <div id="tab3" class="tab_content">
      <h2>Heading 3</h2>
      <p> Content 3</p>
    </div>
    <div id="tab4" class="tab_content">
      <h2>Heading 4</h2>
      <p> Content 4</p>
    </div>
    <div id="tab5" class="tab_content">
      <h2>Heading 5</h2>
      <p> Content 5</p>
    </div>
  </div>
</div>
</body>
</html>