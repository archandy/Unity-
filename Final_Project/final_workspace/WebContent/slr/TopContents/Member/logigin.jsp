<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
#slrlogin,#slrlogo{
    	display: inline-block;
    }
    #slrlogin{
    	float:right;
    }
    #bbzx,#log_in4{
    	display: inline-block;
    }
    #bbzx{
    	position: relative;
    }
    #log_in2,#log_in3,#log_in5,#log_in6{
    	display: inline-block;
    }

</style>
</head>
<body>

<div id="slrlogin">
				<div id="lo_main">
					<div id="bbzx">
						<div id="log_in2">
							<input type="text" name="lo_lo" size="13" style="height: 15px;">
						</div>

						<div id="log_in3">
							<input type="text" name="lo_lo2" size="13" style="height: 15px;">
						</div>
					</div>
					<div id="log_in4">
						<a href='mainSlr.jsp?content=TopContents/Market/.jsp'>
							로그인
						</a>
					</div>
					<div id="log_in5">
						<a href='mainSlr.jsp?content=TopContents/Member/member_firstPage.jsp'>
							회원가입
							
						</a>
					</div>
					<div id="log_in6">
						<a href="mainSlr.jsp?content=TopContents/Member/IDPWS.jsp">
							ID/비밀번호 찾기							
						</a>
					</div>
				</div>
			</div>
</body>

</html>