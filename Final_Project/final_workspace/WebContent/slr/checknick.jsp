<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	private	String driver = "oracle.jdbc.driver.OracleDriver";		
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";	
	
	public void init(){
	try {
		Class.forName(driver); 
	} catch (Exception e) {
		e.printStackTrace();
		}
	}
	public void setConnection(){
		try{
			conn = DriverManager.getConnection(url, "hr", "hr"); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

%>

<% 
	String nick = request.getParameter("nick");
	
try{
	this.setConnection();
	String sql ="select * from SLR_MEMBER where nick=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, nick);
	rs=pstmt.executeQuery();
	
}catch (Exception e){
	e.printStackTrace();
}
%>


<html>
<head>
<script>
	function checknickClose(nick) {
		opener.frm.nick.value = nick;
		window.close();
		opener.frm.birthday.focus();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method='post' action="checknick.jsp">
		<%
			try{
				if(rs.next()||(nick==null)){
		%>
		<%=nick%> 는 이미 있는 닉네임 입니다.<br/>
		다른 닉네임을 입력해주세요 <br/>
		닉네임: <input type='text' name='nick'>
		<input type='submit' value='확인'> 
		<%
				}
				else
				{
		%>
		 <%=nick%> 는 사용 가능한 닉네임 입니다.<br/>
		<input type='button' value='확인' onClick="javascript:checknickClose('<%=nick %>')">
		
		<%
				}
			}
		catch (Exception e){
			e.printStackTrace();
		}
		finally
		{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		%>

	</form>
</body>
</html>