package bean;

import java.io.File;
import java.sql.*;
import java.util.*;

import com.oreilly.servlet.MultipartRequest;


public class communitybean {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";
	
	private Connection conn;
	
	private String findStr="";
	
	MultipartRequest multi;
	//////페이지
	int listSize = 12; //한페이지에 보여줄 게시물 수
	int blockSize = 10; //한번에 보여줄 페이지 갯수(이게 한블럭)
	int totSize = 0; //총 게시물의 수
	int totPage = 0; //가장마지막페이지
	int totBlock = 1; //총 블럭 수
	int nowPage = 1; //현재페이지
	int nowBlock = 1; //현재 블럭 (5페이지면 2블럭)
	int startNo = 0; //현재 페이지의 첫번째 게시물 번호
	int endNo = 0; //현재 페이지의 마지막 게시물 번호
	int startPage = 0; //현재 블럭의 시작페이지 번호
	int endPage = 0; //현재 블럭의 마지막페이지 번호 

	///////////////////////페이지
	public void pageCompute()
	{
		// 검색된 정보를 통해 전체 건 수를 취득한 후 페이지 분리와 관련된 11개의 변수값을 설정.
		String sql = "select count(*) cnt from SLR_COMM_FREEBOARD";
		try
		{
			PreparedStatement pst = conn.prepareStatement(sql);
//			pst.setString(1, "%" + findStr + "%");
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				totSize = rs.getInt("cnt");
				totPage = (int) Math.ceil((float) totSize * 1.0 / listSize);
				totBlock = (int) Math.ceil((float) totPage * 1.0 / blockSize);
				////////////////////2페이지 이동한다면
				endNo = nowPage * listSize;
				startNo = endNo - listSize + 1;
				if(endNo > totSize)
					endNo = totSize;
				nowBlock = (int) Math.ceil((float) nowPage / blockSize);
				////////////////////블록이동처리
				endPage = nowBlock * blockSize;
				startPage = endPage - blockSize + 1;
				if(endPage > totPage)
					endPage = totPage;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}	
	
	public communitybean(){
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,"hr","hr");
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
	}
	// /////////////////////////////조회에 따른 게시판목록
		public ArrayList<communitydata> list()
		{
			pageCompute();
			ArrayList<communitydata> a = new ArrayList<communitydata>();
			String sql = "select * from(select rownum rn , s. * from"
					+ "(select * from SLR_COMM_FREEBOARD "
					+ "order by Comm_freeboard_rno desc, deep)s)a where rn between ? and ?";
			try
			{
				
				PreparedStatement pst = conn.prepareStatement(sql);
				/////페이지
				pst.setInt(1, startNo);
				pst.setInt(2, endNo);
				ResultSet rs = pst.executeQuery();
				while (rs.next())
				{
					communitydata s = new communitydata();
					s.setComm_freeboard_rno(rs.getInt("comm_freeboard_rno"));
					s.setBoard_rno(rs.getInt("board_rno"));
					s.setId(rs.getString("id"));
					s.setJemok(rs.getString("jemok"));
					s.setMdate(rs.getString("mdate"));
					s.setGood(rs.getInt("good"));
					s.setHit(rs.getInt("hit"));
					s.setContents_txt(rs.getString("contents_txt"));
					s.setContents_picture(rs.getString("contents_picture"));
					s.setBad(rs.getInt("bad"));
					s.setGrp(rs.getInt("grp"));
					s.setDeep(rs.getInt("deep"));
					a.add(s);
				}
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return a;
		}
	
	public String getFindStr() {
		return findStr;
	}
	public void setFindStr(String findStr) {
		this.findStr = findStr;
	}
	
	public MultipartRequest getMulti() {
		return multi;
	}

	public void setMulti(MultipartRequest multi) {
		this.multi = multi;
	}

	///////////////////////////////////////////////////////////글 입력
	public int append(){
		
		int r=0;
		communitydata d = new communitydata();
		
		//d.setId(multi.getParameter("id"));
		d.setJemok(multi.getParameter("jemok"));
		d.setMdate(multi.getParameter("mdate"));
		d.setContents_txt(multi.getParameter("Contents_txt"));
		d.setContents_picture(multi.getFilesystemName("Contents_picture"));
		
		String sql = "insert into SLR_COMM_FREEBOARD values(SEQ_SLR_COMM_FREEBOARD.nextval, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, " + "SEQ_SLR_COMM_FREEBOARD.currval, SEQ_SLR_COMM_FREEBOARD.currval)";
		
		try{
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, d.getBoard_rno());
			pst.setString(2, d.getId());
			pst.setString(3, d.getJemok());
			pst.setString(4, d.getMdate());
			pst.setInt(5, d.getGood());
			pst.setInt(6, d.getHit());
			pst.setString(7, d.getContents_txt());
			pst.setString(8, d.getContents_picture());
			pst.setInt(9, d.getBad());
			
			r = pst.executeUpdate();
			
			System.out.println("execute");
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return r;
	}
	
	////////////////////////////////////////////////삭제
	public int delete(int comm_freeboard_rno, String Contents_picture){
		
		int r=0;
		String sql="delete from SLR_COMM_FREEBOARD where comm_freeboard_rno=?";
		System.out.println("bean에서 Contents_picture"+Contents_picture);
		try{
			if(!Contents_picture.equals("")){
				String uploadPath="C:/Dropbox/Final_Project/final_workspace/WebContent/slr/TopContents/Community/imgs";
				File f = new File(uploadPath + Contents_picture);
				if(f.exists())
					f.delete();
			
		}
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setInt(1, comm_freeboard_rno);
			r = pst.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return r;
	}
	////////////////////////////정보수정/////////////////////
	public int update(){
		communitydata d= new communitydata();
		d.setComm_freeboard_rno (Integer.parseInt(multi.getParameter("Comm_freeboard_rno")));
		d.setBoard_rno(Integer.parseInt(multi.getParameter("Board_rno")));
		d.setId(multi.getParameter("id"));
		d.setJemok(multi.getParameter("Jemok"));
		d.setMdate(multi.getParameter("mdate"));
		d.setGood(Integer.parseInt(multi.getParameter("good")));
		d.setHit(Integer.parseInt(multi.getParameter("hit")));
		d.setContents_txt(multi.getFilesystemName("Contents_txt"));
		d.setContents_picture(multi.getParameter("Contents_picture"));
		d.setBad(Integer.parseInt("bad"));
		
		int r=0;
		String sql="";
		PreparedStatement pst =null;
		try{
		if(multi.getFilesystemName("picture") == null){
			sql="update SLR_COMM_FREEBOARD set jemok=?, contents_txt=?, contents_picture=? where id=?";		
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, d.getJemok());
			pst.setString(2, d.getContents_txt());
			pst.setString(3, d.getContents_picture());
			pst.setString(4, d.getId());
			
		}else{
			sql="update SLR_COMM_FREEBOARD set jemok=?, contents_txt=?, contents_picture=? where id=?";		
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, d.getJemok());
			pst.setString(2, d.getContents_txt());
			pst.setString(3, d.getContents_picture());
			pst.setString(4, d.getId());
			//기존 첨부파일 삭제
			if(multi.getParameter("contents_picture") !=""){
			String uploadPath="C:/Dropbox/Final_Project/final_workspace/WebContent/slr/TopContents/Community/imgs";
			File f = new File(uploadPath + multi.getParameter("contents_picture"));
			if(f.exists()) f.delete();
			}
			
			}
			r = pst.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return r;
	}
	

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getTotSize() {
		return totSize;
	}

	public void setTotSize(int totSize) {
		this.totSize = totSize;
	}

	public int getTotPage() {
		return totPage;
	}

	public void setTotPage(int totPage) {
		this.totPage = totPage;
	}

	public int getTotBlock() {
		return totBlock;
	}

	public void setTotBlock(int totBlock) {
		this.totBlock = totBlock;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getNowBlock() {
		return nowBlock;
	}

	public void setNowBlock(int nowBlock) {
		this.nowBlock = nowBlock;
	}

	public int getStartNo() {
		return startNo;
	}

	public void setStartNo(int startNo) {
		this.startNo = startNo;
	}

	public int getEndNo() {
		return endNo;
	}

	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
}
