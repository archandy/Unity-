/**
 * 
 */
$(document).ready (function () {
	//탭(ul) onoff
	$('.jq_tabonoff>.jq_cont').children().css('display', 'none');
	$('.jq_tabonoff>.jq_cont div:first-child').css('display', 'block');
    $('.jq_tabonoff>.jq_cont li:first-child').css('display', 'block');
	$('.jq_tabonoff>.jq_tab div:first-child').addClass('on');
    $('.jq_tabonoff>.jq_tab li:first-child').addClass('on');
	$('.jq_tabonoff').delegate('.tab_menu>div', 'click', function() {
		var index = $(this).parent().children().index(this);
		$(this).siblings().removeClass();
		$(this).addClass('on');
		$(this).parent().next('.jq_cont').children().hide().eq(index).show();
	});
    $('.jq_tabonoff').delegate('.tab_menu2>li', 'click', function() {
		var index = $(this).parent().children().index(this);
		$(this).siblings().removeClass();
		$(this).addClass('on');
		$(this).parent().next('.jq_cont').children().hide().eq(index).show();
	});
    $('#li1').live('click',function(e){
        $('#tab2').show();
        $('#tab3').hide();
         $('#tab4').hide();
        $('#tab5').hide();
         $('#tab6').hide();
        $('#tab7').hide();
    });
    
    $('#li2').live('click',function(e){
       $('#tab2').hide();
        $('#tab3').show();
         $('#tab4').hide();
        $('#tab5').hide();
         $('#tab6').hide();
        $('#tab7').hide();
    });
    $('#li3').live('click',function(e){
        $('#tab2').hide();
        $('#tab3').hide();
         $('#tab4').show();
        $('#tab5').hide();
         $('#tab6').hide();
        $('#tab7').hide();
    });
    $('#li4').live('click',function(e){
       $('#tab2').hide();
        $('#tab3').hide();
         $('#tab4').hide();
        $('#tab5').show();
         $('#tab6').hide();
        $('#tab7').hide();
    });
    $('#li5').live('click',function(e){
       $('#tab2').hide();
        $('#tab3').hide();
         $('#tab4').hide();
        $('#tab5').hide();
         $('#tab6').show();
        $('#tab7').hide();
    });
    $('#li6').live('click',function(e){
        $('#tab2').hide();
        $('#tab3').hide();
         $('#tab4').hide();
        $('#tab5').hide();
         $('#tab6').hide();
        $('#tab7').show();
    });
});
//comment close/open
$(function(){
	  var flag = true;
	  $('.comment_hide').click(function(){
		  if(flag==true){$('.comment_area').hide();flag=false;}
		  else{$('.comment_area').show();flag=true;}
		});
});
/////////////////////////////////////////////////////
var xhr;
var message;
var temp;
var int;
var str;
function init(){
	//1) XMLHttpRequest 객체 생성
	if(window.ActiveXObject){//현재 브라우저의 ActiveX가 존재한다면(IE계열)
		xhr = new ActiveXObject("Msxml2.XMLHTTP");//microsoftXml2.XMLHttp
	}
	else if(window.XMLHttpRequest){//표준브라우저(W3C계열)
		xhr = new XMLHttpRequest();
	}
		
	$(document).ready (function (){
		$('#li1').live('click',function(e){temp="TopContents/Information/SlrReview/info_slr_1.jsp";
			
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
			xhr.open("POST", temp);	//true, id pwd값 생략
			xhr.send();
		});
		$('#li2').live('click',function(e){temp="TopContents/Information/UserReview/info_slr_7.jsp";
			//$('#list_wrap').empty();
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
			//계속 바뀐다면 처리해달라.
			xhr.open("POST", temp);	//true, id pwd값 생략
			xhr.send();
		});
		$('#li3').live('click',function(e){temp="TopContents/Information/Location/info_slr_11.jsp";
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
													//계속 바뀐다면 처리해달라.
			xhr.open("POST", temp);	//true, id pwd값 생략
			xhr.send();
		});
		$('#stit1').live('click',function(e){temp="TopContents/Information/SlrReview/info_slr_1.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit2').live('click',function(e){temp="TopContents/Information/SlrReview/info_slr_2.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit3').live('click',function(e){temp="TopContents/Information/SlrReview/info_slr_3.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit4').live('click',function(e){temp="TopContents/Information/SlrReview/info_slr_4.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit5').live('click',function(e){temp="TopContents/Information/SlrReview/info_slr_5.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit6').live('click',function(e){temp="TopContents/Information/SlrReview/info_slr_6.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit7').live('click',function(e){temp="TopContents/Information/UserReview/info_slr_7.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit8').live('click',function(e){temp="TopContents/Information/UserReview/info_slr_8.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit9').live('click',function(e){temp="TopContents/Information/UserReview/info_slr_9.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit10').live('click',function(e){temp="TopContents/Information/UserReview/info_slr_10.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit11').live('click',function(e){temp="TopContents/Information/Location/info_slr_11.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit12').live('click',function(e){temp="TopContents/Information/Location/info_slr_12.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit13').live('click',function(e){temp="TopContents/Information/Location/info_slr_13.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit14').live('click',function(e){temp="TopContents/Information/Location/info_slr_14.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit15').live('click',function(e){temp="TopContents/Information/Location/info_slr_15.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit16').live('click',function(e){temp="TopContents/Information/Location/info_slr_16.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit17').live('click',function(e){temp="TopContents/Information/Location/info_slr_17.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});
		$('#stit18').live('click',function(e){temp="TopContents/Information/Location/info_slr_18.jsp";
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=liProcess;	//xhr.status(or xhr.ready)의바뀌는 상태값이 
												//계속 바뀐다면 처리해달라.
		xhr.open("POST", temp);	//true, id pwd값 생략
		xhr.send();
		});

	});
}
function liProcess(){
	if(xhr.status==200 && xhr.readyState==4){
		var rs = document.getElementById('list_wrap');
		rs.innerHTML = xhr.responseText;
	}
}

function info_g1(){
	
}
function info_g2(){
	    	//location.href="mainSlr.jsp?content=TopContents/Information/info_list.jsp&grno=2"
	    	tab();
}
function tab(){
	 $('#tab2').hide();
     $('#tab3').show();
      $('#tab4').hide();
     $('#tab5').hide();
      $('#tab6').hide();
     $('#tab7').hide();
}
function info_g3(){

}

function loadInfoProcess(){
	//message += xhr.status + "," + xhr.readyState + "<br/>";
	//document.write(message);
	if(xhr.status==200 && xhr.readyState==4){//200 & 4가 데이터 정상수신
		var rs = document.getElementById("result");
		rs.innerHTML = xhr.responseText;//읽어드리는 data타입. responseText
	}
}
function gugudanProcess(){
	if(xhr.status==200 && xhr.readyState==4){
		var rs = document.getElementById("result");
		rs.innerHTML = xhr.responseText;
	}
}
