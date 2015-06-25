/**
 * 
 */

function communitywrite(){
	document.getElementById('write_btn3').onclick = function(){
		url = "mainSlr.jsp?content=TopContents/Community/community_main_free_jsp/community_free_write_resert.jsp";
		frm_insert.action = url;
		frm_insert.submit();
	}
}

