package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class itemBuyStatementBean {
	private String driver = "oracle.jdbc.driver.OracleDriver"; // jdbc드라이버 이름을
																// 설정한다.
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";

	private Connection conn = null;

	public itemBuyStatementBean() {
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

	

	public int append(itemBuyStatementData d) {
		int r = 0;

		String sql = "insert into slr_item_good_statement(rno, id, buy_date, item_no) values(nextval,?,sysdate,?)";

		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, d.getId());
			pst.setString(2, d.getItem_no());
			

			r = pst.executeUpdate(); // insert, update, alter, delete
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}
}
