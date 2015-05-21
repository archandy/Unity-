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
	String m_id = request.getParameter("m_id");
	
try{
	this.setConnection();
	String sql ="select * from member where m_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, m_id);
	rs=pstmt.executeQuery();
	
}catch (Exception e){
	e.printStackTrace();
}
%>


<html>
<head>
<script>
	function checkidClose(m_id) {
		opener.frm.m_id.value = m_id;
		window.close();
		opener.frm.m_nick.focus();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method='post' action="checkid2.jsp">
		<%
			try{
				if(rs.next()||(m_id==null)){
		%>
		<%=m_id%> 는 이미 있는 아이디 입니다.<br/>
		다른 아이디를 입력해주세요 <br/>
		아이디: <input type='text' name='m_id'>
		<input type='submit' value='확인'> 
		<%
				}
				else
				{
		%>
		 <%=m_id%> 는 사용 가능한 아이디 입니다.<br/>
		<input type='button' value='확인' onClick="javascript:checkidClose('<%=m_id %>')">
		
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