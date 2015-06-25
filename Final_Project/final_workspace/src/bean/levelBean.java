package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class levelBean {
	private String driver = "oracle.jdbc.driver.OracleDriver"; // jdbc드라이버 이름을
																// 설정한다.
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";

	private Connection conn = null;

	public levelBean() {
		try {
			Class.forName(driver); // 드라이버를 로드한다.
			conn = DriverManager.getConnection(url, "hr", "hr"); // 설정했던jdbc
																	// url을 이용하여
																	// connection객체를
																	// 얻어온다.

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

	public levelData viewEx(int lv) {
		levelData d = null;
		String sql = "select * from slr_level where level_list=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, lv);
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				d = setData(rs);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return d;
	}
	
	public levelData viewlv(int ex) {
		levelData d = null;
		String sql = "select * from slr_level where experiencepoint=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, ex);
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				d = setData(rs);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return d;
	}

	public levelData setData(ResultSet rs) throws Exception {
		levelData d = new levelData();
		d.setColor(rs.getString("color"));
		d.setLevel_list(rs.getInt("level_list"));
		d.setExperiencepoint(rs.getInt("experiencepoint"));
		return d;
	}
}
