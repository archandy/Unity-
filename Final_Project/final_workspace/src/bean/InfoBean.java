package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.MultipartRequest;

public class InfoBean {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";
	private Connection conn;
	private String findStr = ""; // 검색 text 값.
	MultipartRequest multi;
	public MultipartRequest getMulti() {
		return multi;
	}

	public int append(int i)
	{
		int r = 0;
		InfoData data = new InfoData();
		
		data.setBoard_rno(Integer.parseInt(multi.getParameter("grno")));
		//		d.setBoardRno(Integer.parseInt(multi.getParameter("board_rno")));
		data.setId(multi.getParameter("write_btn4_id"));//아이디
		System.out.println("멀티로쓴아이디" + multi.getParameter("write_btn4_id"));
		data.setJemok(multi.getParameter("jemok"));//제목
		System.out.println("멀티로쓴제목" + multi.getParameter("jemok"));
		//		d.setGood(Integer.parseInt(multi.getParameter("good")));
		//				d.setHit(Integer.parseInt(multi.getParameter("hit")));
		data.setContents_txt(multi.getParameter("contents_txt"));
		data.setContents_picture(multi.getFilesystemName("picture"));
		//		d.setBad(Integer.parseInt(multi.getParameter("bad")));
		data.setInfo_slrreview_categoty(Integer.parseInt(multi.getParameter("categoryOption")));
		showPic(data.getContents_picture());
		//		d.setContentsPicThumb(multi.getParameter("contents_picture_thumb"));
		String sql = "insert into SLR_GALL_PRO_BOARD values(SEQ_GALL_PRO_BOARD.nextval, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, " + "SEQ_GALL_PRO_BOARD.currval, SEQ_GALL_PRO_BOARD.currval, " + "?, ?)";
		//순서:1.gall_pro_rno, 2.board_rno, 3.id, 4.jemok, 5.mdate, 6.good, 7.hit
		// 8.contents_txt, 9.contents_picture, 10.bad, 11.grp, 12.deep,
		// 13.gall_pro_category, 14.contents_picture_thumb
		try
		{
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, data.getBoard_rno());
			pst.setString(2, data.getId());
			pst.setString(3, data.getJemok());
			pst.setString(4, tmp);
			pst.setInt(5, data.getGood());
			pst.setInt(6, data.getHit());
			pst.setString(7, data.getContents_txt());
			pst.setString(8, data.getContents_picture());
			pst.setInt(9, data.getBad());
			pst.setInt(10, data.getInfo_slrreview_categoty());
			pst.setString(11, data.getContentsPicThumb());
			r = pst.executeUpdate();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return r;
		
	}

	private void showPic(String contents_picture) {
		// TODO Auto-generated method stub
		
	}

	public void setMulti(MultipartRequest multi) {
		this.multi = multi;
	}

	public Date getToday() {
		return today;
	}

	public void setToday(Date today) {
		this.today = today;
	}

	public SimpleDateFormat getDate() {
		return date;
	}

	public void setDate(SimpleDateFormat date) {
		this.date = date;
	}

	public String getTmp() {
		return tmp;
	}

	public void setTmp(String tmp) {
		this.tmp = tmp;
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

	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("hh:mm");
	String tmp = date.format(today);
	// 페이지
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


		// //////////////////////페이지
		public void pageCompute()
		{
			// 검색된 정보를 통해 전체 건 수를 취득한 후 페이지 분리와 관련된 11개의 변수값을 설정.
			String sql = "select count(*) cnt from slr_gall_pro_board";
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
					System.out.println("starno : "+startNo);
					System.out.println("endno : "+endNo);
				}
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		}
		
		public InfoBean()
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
		
}
