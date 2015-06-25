
function goView(id) {
	url = "mainSlr.jsp?content=TopContents/mall/main_buy_item.jsp&mid=" + id;
	location.href = url;
};

function goView2(id) {
	var mpoint = frm_mpoint.mp.value;
	var ipoint = frm_ipoint.ip.value;
	var licencelimit = frm_licencelimit.lcl.value;
	var mlicence = frm_mlicence.mlc.value;
	var mlevel=frm_mlevel.mlv.value;
	var levellimit=frm_levellimit.lvl.value;
	
	if ((mpoint >= ipoint) && (licencelimit==mlicence)&&(mlevel>=levellimit)) {
		url = "mainSlr.jsp?content=TopContents/mall/main_buy_ok.jsp&mid=" + id;
		location.href = url;
	} else {
		alert("조건이 맞지 않습니다.");
	}
};

function view() {
	url = "mainSlr.jsp?content=TopContents/mall/";
	document.getElementById('btn_cancel').onclick = function() {
		alert("123123");
		url += "main_buy.jsp";
		location.href = url;
	}
}

function update() {

	document.getElementById("btnList").onclick = function() {
		url = "blogMain.jsp?content=../score/list.jsp";
		frm_update.action = url;
		frm_update.submit();
	}
}

// list에서 사용하는 스크립트
function goPage(page) {
	frm.nowPage.value = page;
	frm.submit();
}
