/*
	작성일 :
	작성자 :
	기능	 :
*/

package semiBean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.oreilly.servlet.MultipartRequest;


public class SemiLeaderBean
{

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private Connection conn;//Oracle 접속을 위한 변수 conn
	private String findStr = "";//Setter,Getter 생성 옆jsp랑 값 주고받기용
	MultipartRequest multi;


	public SemiLeaderBean()
	{
		try
		{ //Oracle과의 연동을위한 작업
			Class.forName(driver);//Oracle과의 연동을 위한 장치
			//Oracle의 로그인 작업
			conn = DriverManager.getConnection(url, "hr", "hr");
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}


	public ArrayList<SemiLeaderData> leaderList()
	{
		System.out.println("리스트 메서드 진입");
		ArrayList<SemiLeaderData> al = new ArrayList<SemiLeaderData>();
		//		String sql = "select * from board order by grp desc, deep";
		String sql = "select * from leaderboard order by ranking";
		try
		{
			//위에 선언한 sql을 가져와서 pst라는 객체생성(준비된 내역은 뭔지모름)
			PreparedStatement pst = conn.prepareStatement(sql);
			
			ResultSet rs = pst.executeQuery();
//			rs.getInt("for_goal");
			while (rs.next())
			{
				SemiLeaderData ld = new SemiLeaderData();
				ld.setTeamthumb(rs.getString("teamthumb"));
				ld.setRanking(rs.getInt("ranking"));
				ld.setTeamname(rs.getString("teamname"));
				ld.setGamecnt(rs.getInt("gamecnt"));
				ld.setWin(rs.getInt("win"));
				ld.setDraw(rs.getInt("draw"));
				ld.setLose(rs.getInt("lose"));
				ld.setFor_goal(rs.getInt("for_goal"));
				ld.setAgainst_goal(rs.getInt("against_goal"));
				ld.setFor_against_goal(rs.getInt("for_against_goal"));
				ld.setPoint(rs.getInt("point"));
				al.add(ld);
			}
			
			System.out.println("al 추가 완료 후 리턴");
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return al;
	}
}
