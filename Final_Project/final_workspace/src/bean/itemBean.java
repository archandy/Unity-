package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class itemBean {
	private String driver = "oracle.jdbc.driver.OracleDriver"; // jdbc드라이버 이름을
																// 설정한다.
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";

	private Connection conn = null;
	
	private int listSize = 3; 
	private int blockSize = 2;		//얘를 줄이거나 늘려서 페이지수 조절
	private int totSize = 1;
	private int totPage = 0;
	private int totBlock = 0;
	private int nowPage = 1;		//얘를 줄이거나 늘려서 페이지수 조절
	private int nowBlock = 1;
	private int startNo = 0;
	private int endNo = 0;
	private int startPage = 0;
	private int endPage = 0;

	public itemBean() {
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
	
	public void pageCompute() {
		// 검색된정보를토해 전체 건수를 취득한후 페이지 분리와 관련된 11개의 변수설정

		String sql = "select count(*) cnt from slr_mall_item";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);

			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				totSize = rs.getInt("cnt");
				totPage = (int)Math.ceil(totSize*1.0/listSize);
				totBlock = (int)Math.ceil(totPage*1.0/blockSize); 
				endNo = (nowPage * listSize);
				startNo = (endNo - listSize +1);
				if(endNo>totSize){ 
					endNo = totSize;
				}
				nowBlock = (int)Math.ceil((float)nowPage/blockSize);
				
				endPage =(nowBlock * blockSize);
				startPage = (endPage - blockSize+1);
				if(endPage> totPage){
					endPage=totPage;
					System.out.println("totsize :" + totSize);
					System.out.println("totPage :" + totPage);
					System.out.println("totblock :" + totBlock);
					System.out.println("listsize :" + listSize);
					System.out.println("blocksize :" + blockSize);
					System.out.println("nowPage :" + nowPage);
					System.out.println("nowBlock :" + nowBlock);
					System.out.println("endPage :" +endPage);
					System.out.println("startNo :" + startNo);
					System.out.println("endNo :" + endNo);
					System.out.println("startPage :" + startPage);
				}			 
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	public ArrayList<itemData> list() {
		ArrayList<itemData> al = new ArrayList<itemData>();
		try {
			String sql = "select * from slr_mall_item";

			PreparedStatement pst = conn.prepareStatement(sql);

			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				itemData d = new itemData();
				d.setItemName(rs.getString("item_name"));
				d.setBuyPoint(rs.getInt("buy_point"));
				d.setPeriodOfUse(rs.getString("period_of_use"));
				d.setLicenceLimit(rs.getString("licence_limit"));
				d.setImgName(rs.getString("img"));
				d.setContent(rs.getString("content"));
				d.setAddGood(rs.getInt("add_good"));
				d.setAddPoint(rs.getInt("add_point"));
				d.setLevelLimit(rs.getInt("level_limit"));
				d.setGrade(rs.getString("grade"));
				d.setMid(rs.getString("mid"));
				al.add(d);
			}
			rs.close();
			pst.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<itemData> listLi() {
		ArrayList<itemData> al = new ArrayList<itemData>();
		try {
			String sql = "select * from slr_mall_item where buy_point>9999";

			PreparedStatement pst = conn.prepareStatement(sql);

			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				itemData d = new itemData();
				d.setItemName(rs.getString("item_name"));
				d.setBuyPoint(rs.getInt("buy_point"));
				d.setPeriodOfUse(rs.getString("period_of_use"));
				d.setLicenceLimit(rs.getString("licence_limit"));
				d.setImgName(rs.getString("img"));
				d.setContent(rs.getString("content"));
				d.setAddGood(rs.getInt("add_good"));
				d.setAddPoint(rs.getInt("add_point"));
				d.setLevelLimit(rs.getInt("level_limit"));
				d.setGrade(rs.getString("grade"));
				d.setMid(rs.getString("mid"));
				al.add(d);
			}
			rs.close();
			pst.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<itemData> listPo() {
		ArrayList<itemData> al = new ArrayList<itemData>();
		try {
			String sql = "select * from slr_mall_item where img='P.jpg'";

			PreparedStatement pst = conn.prepareStatement(sql);

			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				itemData d = new itemData();
				d.setItemName(rs.getString("item_name"));
				d.setBuyPoint(rs.getInt("buy_point"));
				d.setPeriodOfUse(rs.getString("period_of_use"));
				d.setLicenceLimit(rs.getString("licence_limit"));
				d.setImgName(rs.getString("img"));
				d.setContent(rs.getString("content"));
				d.setAddGood(rs.getInt("add_good"));
				d.setAddPoint(rs.getInt("add_point"));
				d.setLevelLimit(rs.getInt("level_limit"));
				d.setGrade(rs.getString("grade"));
				d.setMid(rs.getString("mid"));
				al.add(d);
			}
			rs.close();
			pst.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<itemData> listGood() {
		ArrayList<itemData> al = new ArrayList<itemData>();
		try {
			String sql = "select * from slr_mall_item where img='G.jpg'";

			PreparedStatement pst = conn.prepareStatement(sql);

			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				itemData d = new itemData();
				d.setItemName(rs.getString("item_name"));
				d.setBuyPoint(rs.getInt("buy_point"));
				d.setPeriodOfUse(rs.getString("period_of_use"));
				d.setLicenceLimit(rs.getString("licence_limit"));
				d.setImgName(rs.getString("img"));
				d.setContent(rs.getString("content"));
				d.setAddGood(rs.getInt("add_good"));
				d.setAddPoint(rs.getInt("add_point"));
				d.setLevelLimit(rs.getInt("level_limit"));
				d.setGrade(rs.getString("grade"));
				d.setMid(rs.getString("mid"));
				al.add(d);
			}
			rs.close();
			pst.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public itemData view(String mid) {
		itemData d = null;
		String sql = "select * from slr_mall_item where mid=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, mid);
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				d = setData(rs);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return d;
	}

	public itemData setData(ResultSet rs) throws Exception {
		itemData d = new itemData();
		d.setItemName(rs.getString("item_name"));
		d.setBuyPoint(rs.getInt("buy_point"));
		d.setPeriodOfUse(rs.getString("period_of_use"));
		d.setLicenceLimit(rs.getString("licence_limit"));
		d.setImgName(rs.getString("img"));
		d.setContent(rs.getString("content"));
		d.setAddGood(rs.getInt("add_good"));
		d.setAddPoint(rs.getInt("add_point"));
		d.setLevelLimit(rs.getInt("level_limit"));
		d.setGrade(rs.getString("grade"));
		d.setMid(rs.getString("mid"));
		return d;
	}

	public int buyitem(itemData d,String id) {
		int r = 0;

		if (d.getImgName().equals("P.jpg")) {
			String sql = "update slr_member set point_limit=?, point=point-? where id=?";

			try {
				PreparedStatement pst = conn.prepareStatement(sql);

				pst.setInt(1, d.getAddPoint());
				pst.setInt(2, d.getBuyPoint());
				pst.setString(3, id);

				r = pst.executeUpdate(); // insert, update, alter, delete
			} catch (Exception e) {
				e.printStackTrace();
			}
			return r;
		}
		else if(d.getImgName().equals("G.jpg")){
			String sql = "update slr_member set good_limit=?, point=point-? where id=?";

			try {
				PreparedStatement pst = conn.prepareStatement(sql);

				pst.setInt(1, d.getAddGood());
				pst.setInt(2, d.getBuyPoint());
				pst.setString(3, id);
				r = pst.executeUpdate(); // insert, update, alter, delete
			} catch (Exception e) {
				e.printStackTrace();
			}
			return r;
		}else{
			String sql = "update slr_member set licence=?, good_limit=?, point_limit=?, point=point-? where id=?";

			try {
				PreparedStatement pst = conn.prepareStatement(sql);

				pst.setString(1, d.getGrade());
				pst.setInt(2, d.getAddGood());
				pst.setInt(3, d.getAddPoint());
				pst.setInt(4, d.getBuyPoint());
				pst.setString(5, id);
				r = pst.executeUpdate(); // insert, update, alter, delete
			} catch (Exception e) {
				e.printStackTrace();
			}
			return r;
		}	
	}
}
