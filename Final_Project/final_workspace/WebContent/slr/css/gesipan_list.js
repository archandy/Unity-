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