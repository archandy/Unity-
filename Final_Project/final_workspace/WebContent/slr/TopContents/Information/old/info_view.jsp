<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>

  $(function(){
	  var flag = true;
	  $('.comment_hide').click(function(){
		  if(flag==true){$('.comment_area').hide();
		  flag=false;}
		  else{$('.comment_area').show();flag=true;}
		  
		});
  });
</script>
<style>
    .main
    {
        width: 1000px;
        margin: auto;
    }
    
    #header
    {
        height: 60px;
        padding: 3px;
        padding-top: 20px;
    }
    
    #middle
    {
        min-height: 1400px;
    }
    
    #menu
    {
        height: 33px;
       background: #6cade2; /* Old browsers */
/* IE9 SVG, needs conditional override of 'filter' to 'none' */
background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzZjYWRlMiIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiMzMjZlYmMiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
background: -moz-linear-gradient(top,  #6cade2 0%, #326ebc 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#6cade2), color-stop(100%,#326ebc)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #6cade2 0%,#326ebc 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #6cade2 0%,#326ebc 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #6cade2 0%,#326ebc 100%); /* IE10+ */
background: linear-gradient(to bottom,  #6cade2 0%,#326ebc 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6cade2', endColorstr='#326ebc',GradientType=0 ); /* IE6-8 */


    }
    
    #community, #information, #gallery, #market, #mall
    {
        font-size: 15px;
        width: 197px;
        height: 33px;
        float: left;
        text-align: center;
        padding-top: 5px;
        color: white;
        font-weight: bold;
    }
    #information{background: white;color:#326ebc;}
    #blankGalleryMain
    {
        border-bottom: 1px solid #e3e3e3;
        height: 30px;
    }
    
    #info_main_side{background: #ffffff;border:none;width:135px;float:left;margin-bottom: 25px;margin-right:10px;}
    #info_main_side,#tabManue{display:inline-block;margin-top:10px;}
    #tabManue{border:none;width:850px;margin-bottom:10px;}
    #contentsRight{border:none;float:right;width:850px;}
    #contentsComment{border:none;float:right;width:850px;margin-top:50px;}
    
    #footer
    {
        min-height: 40px;
    }
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String sideMenu = "info_side_slr.html";
	String tabMenu = "info_top_c0.html";
	String view = "info_view.html";
	String comment ="info_comment.html";
%>
    <div class='main'>
        <div id='header'>
           
           
            <div id="slrlogo">
            <img src="img/logo_slr.png">
            </div>
            <div id='Ad1'>
            </div>
            
        </div>
        <div id='middle'>
            <div id='menu'>
                <div id='community'>
                    COMMUNITY
                </div>
                <div id='information'>
                    INFORMATION
                </div>
                <div id='gallery'>
                    GALLERY
                </div>
                <div id='market'>
                    MARKET
                </div>
                <div id='mall'>
                    MALL
                </div>
            
               
            </div>
            <div id='contents'>
            <!--<jsp:include page="" />--> 
                <div id='blankGalleryMain'>
                </div>
                <div id='info_main_side'>   
                    <jsp:include page="<%=sideMenu %>"/>
                </div>
                <div id='info_main_right'>
                    <div id='tabManue'>
                        <jsp:include page="<%=tabMenu %>"/>
                    </div>
                    <div id='contentsRight'>
                        <jsp:include page="<%=view %>"/>
                    </div>
                    <div id='contentsComment'>
                       <jsp:include page="<%=comment %>"/>
                    </div>
                </div>
            </div>
        </div>
        <div id='footer'>
            <div id='footerCopyright'>
           COPYRIGHT (C) SLRCLUB. ALL RIGHTS RESERVED.</div>  
    	</div>
    </div>
</body>
</html>