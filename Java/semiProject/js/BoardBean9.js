/**
 * 
 */
url = "semi2joMain.jsp?content=TopMenu/board/";
// url = "semi2joMain.jsp?content=TopMenu/team_view.jsp&rno="+rno;//parameter를
// 연결하기위해 '&'를 쓴다.
function goview(frno) {
	url += "view9.jsp&frno=" + frno;
	location.href = url;
}

function goVote() {
	url += "../semi2joComm_Poll.jsp"
	location.href = url;
}
function goVotePrev() {
	url += "../semi2joComm_Poll_Prev.jsp"
	location.href = url;
}
function f_nw() {
	document.getElementById("btn_nw").onclick = function() {
		url += "insert9.jsp";
		list9_frm.action = url;
		list9_frm.submit();
	}
}
function goPage(page) {
	list9_frm.nowPage.value = page;
	list9_frm.submit();
}

function view1() {
	document.getElementById('btnupdate').onclick = function() {
		frno = frm_view.frno.value;
		url += "update9.jsp&frno=" + frno;
		frm_view.action = url;
		frm_view.submit();
	}
	document.getElementById('btndelete').onclick = function() {
		frno = frm_view.frno.value;
		url += "delete_result9.jsp&frno=" + frno;
		frm_view.action = url;
		frm_view.submit();

	}
	document.getElementById('btnlist').onclick = function() {
		frno = frm_view.frno.value;
		url += "list9.jsp&frno=" + frno;
		frm_view.action = url;
		frm_view.submit();
	}
	document.getElementById('btnreply').onclick = function() {
		frno = frm_view.frno.value;
		url += "reply.jsp&frno=" + frno;
		frm_view.action = url;
		frm_view.submit();

	}

}
function fupdate() {
	document.getElementById('fbtnappend').onclick = function() {
		frno = frm_update.frno.value;
		url += "update_result9.jsp&frno=" + frno;
		frm_update.action = url;
		frm_update.submit();
	}
	document.getElementById('btnlist').onclick = function() {
		frno = frm_update.frno.value;
		url += "list9.jsp&fid=" + frno;
		frm_update.action = url;
		frm_update.submit();
	}
}

function f_update() {
	document.getElementById('btnlist').onclick = function() {
		url += "list9.jsp";
		frm_update.action = url;
		frm_update.submit();
	}
}

function f1_update() {
	document.getElementById('btnlist').onclick = function() {
		url += "list9.jsp";
		d_update.action = url;
		d_update.submit();
	}
}

function insert9() {
	document.getElementById('btnSave').onclick = function() {
		url += "insert_result9.jsp";
		frm_insert.action = url;
		frm_insert.submit();
	}
	document.getElementById('btnlist').onclick = function() {
		url += "list9.jsp";
		frm_insert.action = url;
		frm_insert.submit();
	}
}

function f_insert() {
	document.getElementById('btnList').onclick = function() {
		url += "list9.jsp";
		frm_insert9.action = url;
		frm_insert9.submit();
	}
}
function rep() {
	document.getElementById('btnlist').onclick = function() {
		url = "semi2joMain.jsp?content=TopMenu/board/";
		url += "list9.jsp";
		frm_rep.action = url;
		frm_rep.submit();
	}
	document.getElementById('btnreply').onclick = function() {
		url = "semi2joMain.jsp?content=TopMenu/board/";
		url += "reply_result.jsp";
		reply.action = url;
		reply.submit();
	}
}
