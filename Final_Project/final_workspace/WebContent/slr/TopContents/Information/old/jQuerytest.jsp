<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script>
  $(function(){
	  $('.btn_show').click(function(){
	  $('.btn_word').show();
	  });
	  $('.btn_hide').click(function(){
	  $('.btn_word').hide();
	  });

	  });
	  </script>
</head>
<body>
<button class="btn_show" style="padding:3px">show</button>
<button class="btn_hide" style="padding:3px">hide</button>
<div class="btn_word">Hello world!!!</div>
</body>
</html>