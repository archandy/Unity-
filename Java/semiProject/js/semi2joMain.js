/**
 * 
 */
function btnLogIn(){
document.getElementById('btnUpdate').onclick = function() {
		// data.getMid()는 서버에 있는 데이터이기때문에 javascript(클라이언트)쪽에선 서버에 접근할 수가 없기때문에
		// 몰래 form 안에 input hidden으로 클라이언트에 저장시켜야 한다. .
		rno = frm_view.rno.value;
		url = "includeMain2.jsp?content=../boardLadder/update.jsp&rno="
			+ rno;
		frm_view.action = url;
		frm_view.submit();
	}
}