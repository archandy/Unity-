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
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";	
	
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
	String m_nick = request.getParameter("m_nick");
	
try{
	this.setConnection();
	String sql ="select * from member where m_nick=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, m_nick);
	rs=pstmt.executeQuery();
	
}catch (Exception e){
	e.printStackTrace();
}
%>


<html>
<head>
<script>
	function checkidClose(m_nick) {
		opener.frm.m_nick.value = m_nick;
		window.close();
		opener.frm.m_pwd.focus();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method='post' action="checknick.jsp">
		<%
			try{
				if(rs.next()||(m_nick==null)){
		%>
		<%=m_nick%> 는 이미 있는 닉네임 입니다.<br/>
		다른 닉네임을 입력해주세요 <br/>
		아이디: <input type='text' name='m_nick'>
		<input type='submit' value='확인'> 
		<%
				}
				else
				{
		%>
		 <%=m_nick%> 는 사용 가능한 닉네임 입니다.<br/>
		<input type='button' value='확인' onClick="javascript:checkidClose('<%=m_nick %>')">
		
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