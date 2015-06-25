/*
	작성일 :
	작성자 : 정백경
	기능	 :
*/

package bean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.apache.catalina.connector.Request;
import com.oreilly.servlet.MultipartRequest;


public class GalleryCommentBean
{

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";
	private Connection conn;
	private String findStr = ""; // 검색 text 값.
	MultipartRequest multi;
	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("hh:mm");
	String tmp = date.format(today);


	public GalleryCommentBean()
	{
		try
		{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "hr", "hr");
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}


	// ///////////////////////////조회에 따른 댓글목록
	public ArrayList<GalleryCommentData> list()
	{
		ArrayList<GalleryCommentData> a = new ArrayList<GalleryCommentData>();
		String sql = "select * from SLR_GALL_COMMENT";
		try
		{
			PreparedStatement pst = conn.prepareStatement(sql);
			/////페이지
			ResultSet rs = pst.executeQuery();
			while (rs.next())
			{
				GalleryCommentData s = new GalleryCommentData();
				//					s.setGallProRno(rs.getInt("gall_pro_rno"));
				s.setBoard_rno(rs.getInt("board_rno"));
				s.setGall_comment_contents(rs.getString("gall_comment_contents"));
				s.setGall_comment_deep(rs.getInt("gall_comment_deep"));
				s.setGall_comment_grp(rs.getInt("gall_comment_grp"));
				s.setGall_comment_id(rs.getString("gall_comment_id"));
				s.setGall_comment_like(rs.getInt("gall_comment_like"));
				s.setGall_comment_mdate(rs.getString("gall_comment_mdate"));
				s.setGall_comment_rno(rs.getInt("gall_comment_rno"));
				s.setGall_org_rno(rs.getInt("gall_org_rno"));
				System.out.println("list");
				a.add(s);
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return a;
	}


	// ///////////////////////////////저장
	public int append(int orgRno)
	{
		int r = 0;
		GalleryCommentData d = new GalleryCommentData();
		d.setGall_org_rno(orgRno);
		d.setGall_comment_contents(multi.getParameter("comment"));
		System.out.println("orgRno"+orgRno);
		System.out.println("Comment내용"+multi.getParameter("comment"));
		String sql = "insert into SLR_GALL_COMMENT values(?, ?, SEQ_SLR_GALL_COMMENT.nextval, ?, ?, ?, ?, "
				+ "SEQ_SLR_GALL_COMMENT.currval, SEQ_SLR_GALL_COMMENT.currval)";
		try
		{
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, d.getGall_org_rno());
			pst.setInt(2, d.getBoard_rno());
			pst.setString(3, d.getGall_comment_id());
			pst.setString(4, d.getGall_comment_contents());
			pst.setString(5, tmp);
			pst.setInt(6, d.getGall_comment_like());
			System.out.println("되나?코멘트빈2");
			r = pst.executeUpdate();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return r;
	}


	public String getFindStr()
	{
		return findStr;
	}


	public void setFindStr(String findStr)
	{
		this.findStr = findStr;
	}


	public MultipartRequest getMulti()
	{
		return multi;
	}


	public void setMulti(MultipartRequest multi)
	{
		this.multi = multi;
	}
}
