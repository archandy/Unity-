package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.catalina.connector.Request;




public class memberBean {

	private String driver = "oracle.jdbc.driver.OracleDriver"; // 드라이버의 주소
																// 바꾸지않는다.
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe"; // 내 컴퓨터의
																// ojdbc6.jar의
																// 주소다.
	private Connection conn;
	private String m_id;
	private String m_pw;
	private String birt;
	private String hp;
	private String p;
	private String cp;
	public memberBean() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "hr", "hr");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

	public int append(memberData d){				//데이터를 추가하기위한 메서드 Data타입의 어떤값(d)을 받는다.
		int r=0;
		System.out.println("append들어옴");
		birt =d.getBirthday()+'-'+d.getBirthday2()+'-'+d.getBirthday3();
		hp=d.getHomenumber()+'-'+d.getHomenumber2()+'-'+d.getHomenumber3();
		p=d.getPhonenumber()+'-'+d.getPhonenumber2()+'-'+d.getPhonenumber3();
		cp=d.getCompanynumber()+'-'+d.getCompanynumber2()+'-'+d.getCompanynumber3();
		String sql="insert into SLR_MEMBER(mem_rno, id,password, nick , birthday , email, now_level,point,good_limit,point_limit,licence,gallery_today,info_today,experiencepoint,bad_today,bad_limit,homepage,nate,msn,job,address,homenumber,phonenumber,companyaddress,companynumber,introduce)"
				+ "                 values(SEQ_SLR_MEMBER.nextval,?,?,?,?,?,1,1000,10,50,'D',0,0,0,0,3,?,?,?,?,?,?,?,?,?,?)"; //value값에 ? 를 넣어야 들어감.
		try{
			PreparedStatement pst = conn.prepareStatement(sql);     		//sql문장을 완성시키기위한것. 
			pst.setString(1,d.getId());								// 인서트문장의 순서대로 1,2,3,4 
			pst.setString(2,d.getPassword());							// 매개변수 d로받아온값을 토대로 찍는다. 
			pst.setString(3,d.getNick());
			pst.setString(4,birt);
			pst.setString(5, d.getEmail());
			pst.setString(6, d.getHomepage());
			pst.setString(7,d.getNate());
			pst.setString(8, d.getMsn());
			pst.setString(9,d.getJob());
			pst.setString(10,d.getAddress());
			pst.setString(11, hp);
			pst.setString(12, p);
			pst.setString(13, d.getCompanyaddress());
			pst.setString(14, cp);
			pst.setString(15, d.getIntroduce());
			r= pst.executeUpdate();					//insert,update,delete 은 무조건 executeUpdate로 처리
			System.out.println(d.getId());										//select 는 executeQuery로 처리한다.
		}catch(Exception e){
			e.printStackTrace();
		}
		return r;
	}
	
	public boolean view(String m_id,String m_pw) {
		memberData d = new memberData();
	
		boolean flag=true;
		String sql = "select * from SLR_MEMBER where id=? and password=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, m_id);
			pst.setString(2, m_pw);
			
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				
				flag=true;
			}else{
				flag=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	

	public memberData view3(String m_id) {
		memberData d = new memberData();
		String sql = "select * from SLR_MEMBER where id=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, m_id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				d = setData(rs);
				System.out.println(d.getNow_level());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
		
	}
	
	
	
	
	
	public memberData setData(ResultSet rs) throws Exception{
		memberData d = new memberData();
		d.setId(rs.getString("id"));
		d.setName(rs.getString("name"));
		d.setNick(rs.getString("nick"));
		d.setBirthday(rs.getString("birthday"));
		d.setEmail(rs.getString("email"));
		d.setAddress(rs.getString("address"));
		d.setPhonenumber(rs.getString("phonenumber"));
		d.setHomepage(rs.getString("homepage"));
		d.setPassword(rs.getString("password"));
		d.setJoining(rs.getString("joining"));
		d.setAccountnumber(rs.getString("accountnumber"));
		d.setBank(rs.getString("bank"));
		d.setSelf_introduction(rs.getString("self_introduction"));
		d.setNow_level(rs.getInt("now_level"));
		d.setPoint(rs.getInt("point"));
		d.setLicence(rs.getString("licence"));
		d.setGood_today(rs.getInt("good_today"));
		d.setGood_limit(rs.getInt("good_limit"));
		d.setPoint_today(rs.getInt("point_today"));
		d.setPoint_limit(rs.getInt("point_limit"));
		d.setGallery_today(rs.getInt("gallery_today"));
		d.setInfo_today(rs.getInt("info_today"));
		d.setGood_item_end(rs.getString("good_item_end"));
		d.setPoint_item_end(rs.getString("point_item_end"));
		d.setExperiencepoint(rs.getInt("experiencepoint"));
		d.setBad_today(rs.getInt("bad_today"));
		d.setBad_limit(rs.getInt("bad_limit"));
		
		return d;
	}
	
	

		

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	
	
	
}