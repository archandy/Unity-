<%@page import="bean.itemBuyStatementData"%>
<%@page import="bean.itemBuyStatementBean"%>
<%@page import="bean.memberData"%>
<%@page import="bean.itemData"%>
<%@page import="bean.itemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Item and Licence</title>
<style>
#IDI {
	margin: auto;
	width: 600px;
	font-family: '돋움';
	font-size: 12px;
}

#item_detailedInformation_title {
	padding-top: 5px;
	text-align: center;
	border: 1px solid #B3B3B3;
	border-bottom: hidden;
	width: 150px;
	height: 20px;
	float: left;
	color: #5187C5;
	font-weight: bold;
}

#item_detailedInformation {
	padding: 10px;
	float: left;
	width: 480px;
	height: 230px;
	border: 1px solid #B3B3B3;
}

#item_icon {
	text-align: center;
	float: left;
	border: 1px solid #B3B3B3;
	width: 100px;
	height: 100px;
	font-size: 70px;
}

#item_con {
	margin-left: 20px;
	float: left;
	width: 350px;
	line-height: 200%;
}

#item_name {
	padding: 3px;

	width: 150px;
	font-size: 18px;
	font-weight: bold;
/* 	background-color: #0275E0; */
	color: #0275E0;
}

#item_price {
	padding: 3px;
}

#item_licencelimit {
	padding: 3px;
}

#item_levellimit {
	padding: 3px;
}

#item_contents {
	padding: 3px;
}

#item_pricechart {
	border: 1px solid #B3B3B3;
	border-top: hidden;
	float: left;
	width: 500px;
	height: 40px;
	text-align: center;
	padding-top:20px;
	font-weight: bold;
	font-size: 20px;
}
#ch_price {
	padding: 5px;
	float: left;
	width: 230px;
	text-align: right;
	/* 	border: 1px solid #B3B3B3; */
}

#ch_item_price {
	padding: 5px;
	float: left;
	width: 200px;
	text-align: right;
	/* 	border: 1px solid #B3B3B3; */
}

#ch_point {
	padding: 5px;
	float: left;
	width: 230px;
	text-align: right;
	/* 	border: 1px solid #B3B3B3; */
}

#ch_member_point {
	padding: 5px;
	float: left;
	width: 200px;
	text-align: right;
	/* 	border: 1px solid #B3B3B3; */
}

#ch_result {
	padding: 5px;
	float: left;
	width: 230px;
	text-align: right;
	/* 	border: 1px solid #B3B3B3; */
}

#ch_result_point {
	padding: 5px;
	float: left;
	width: 200px;
	/* 	border: 1px solid #B3B3B3; */
	text-align: right;
}

#btn_bc {
	margin-top: 10px;
	margin-right: 60px;
	float: right;
	width: 90px;
	height: 20px;
	text-align: right;
/* 	border: 1px solid #B3B3B3; */
}

#btn_ok {
	padding-top: 5px;
	text-align: center;
	float: left;
	border: 1px solid #B3B3B3;
	height: 20px;
	width: 50px;
}

#btn_cancel {
	margin-left: 10px;
	padding-top: 5px;
	text-align: center;
	float: left;
	border: 1px solid #B3B3B3;
	height: 20px;
	width: 50px;
}
</style>

<script>
	function init() {
		document.getElementById("btn_ok").onclick = function() {
			location.href = 'mainSlr.jsp?content=TopContents/mall/main_buy.jsp';
		}
	}
</script>
</head>
<body>
	<jsp:useBean id='bean' class='bean.itemData' scope='page' />
	<jsp:setProperty property="*" name='bean' />
	<jsp:useBean id='ibsd' class='bean.itemBuyStatementData' scope='page' />
	<jsp:setProperty property="*" name='ibsd' />
	<%
		itemBean ib = new itemBean();
		itemData data = ib.view(bean.getMid());
		
// 		itemBuyStatementBean sb= new itemBuyStatementBean();
// 		itemBuyStatementData sdata = sb.append(ibsd.)

		String id = "";
		id = (String) session.getAttribute("id");
		System.out.print(id + "여기");
		int r = ib.buyitem(data, id);
// 		try {
// 			if (r > 0) {
// 				out.print("정상적으로 입력되었습니다.");
// 			} else {
// 				out.print("오류 발생!!!");
// 			}
// 		} catch (Exception e) {
// 			e.printStackTrace();
// 		}
	%>

	<div id='IDI'>
		<div id='item_detailedInformation_title'>아이템 세부정보</div>
		<div id='item_detailedInformation'>
			<div id='item_icon'>
				<img src='TopContents/mall/img_final/<%=data.getImgName()%>'>
			</div>
			<div id='item_con'>
				<div id='item_name'><%=data.getItemName()%></div>
				<div id='item_price'>
					가격
					<%=data.getBuyPoint()%>
					P
					
				</div>
				<div id='item_licencelimit'><%=data.getLicenceLimit()%>급 라이센스
					필요
				</div>
				<div id='item_levellimit'>
					레벨
					<%=data.getLevelLimit()%>이상
				</div>
				<div id='item_contents'>
					<%=data.getContent()%>
				</div>
			</div>
		</div>
		<div id='item_pricechart'>
			해당 아이템을 구매 하셨습니다.
		</div>
		<div id='btn_bc'>
			<a href='#'><div id='btn_ok'>
				확인
			</div></a>
		</div>
	</div>
	<form name='frm_view' method="post">
		<input type='hidden' name='mid' value='<%=data.getMid()%>'>
	</form>
	<script>
		init()
	</script>
</body>
</html>