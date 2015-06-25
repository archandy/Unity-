/*
	작성일 : 2015-06-20
	작성자 : 정백경
	기능	 : 갤러리용 빈
*/
/**
 * 
 */

package bean;


import java.io.File;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import bean.GalleryData;
import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;
import com.drew.metadata.exif.ExifSubIFDDirectory;
import com.oreilly.servlet.MultipartRequest;
import exif.ExifPrintTest;


public class GalleryBean{

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@222.111.199.152:9999:xe";
	private Connection conn;
	private String findStr = ""; // 검색 text 값.
	MultipartRequest multi;
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
	public void pageCompute(){
		// 검색된 정보를 통해 전체 건 수를 취득한 후 페이지 분리와 관련된 11개의 변수값을 설정.
		String sql = "select count(*) cnt from slr_gall_pro_board";
		try{
			PreparedStatement pst = conn.prepareStatement(sql);
			//			pst.setString(1, "%" + findStr + "%");
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
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
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}


	public GalleryBean(){
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "hr", "hr");
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}


	//메타데이터 빼오기//메타데이터 빼오기//메타데이터 빼오기//메타데이터 빼오기//메타데이터 빼오기//메타데이터 빼오기
	public void ExifPrintTest(String fileName){
		File file = new File("C:/Dropbox/Final_Project/final_workspace/WebContent/slr/TopContents/Gallery/images/"
				+ fileName);
		GallExifData d = new GallExifData();
		try{
			Metadata metadata = JpegMetadataReader.readMetadata(file);
			for(Directory directory : metadata.getDirectories()){
				
				for(Tag tag : directory.getTags()){//MAKE용1
					System.out.println(tag);
				}
				
				for(Tag tag : directory.getTags()){//MAKE용1
					if(tag.getTagName().equals("Make")){
						d.setMake(tag.getDescription());
					}
				}
				for(Tag tag : directory.getTags()){//MODEL용2
					if(tag.getTagName().equals("Model")){
						d.setModel(tag.getDescription());
					}
				}
				for(Tag tag : directory.getTags()){//Lens Model3
					if(tag.getTagName().equals("Lens Model")){
						d.setLens(tag.getDescription());
						System.out.println("lens : " + d.getLens());
					}
				}
				for(Tag tag : directory.getTags()){//copyright4
					if(tag.getTagName().equals("Copyright")){
						d.setCopyright(tag.getDescription());
						System.out.println("copyright : " + d.getCopyright());
					}
				}
				for(Tag tag : directory.getTags()){//FocalLength5
					if(tag.getTagName().equals("Focal Length")){
						d.setFocallength(tag.getDescription());
					}
				}
				for(Tag tag : directory.getTags()){//ISO6
					if(tag.getTagName().equals("ISO Speed Ratings")){
						d.setIso(tag.getDescription());
					}
				}
				for(Tag tag : directory.getTags()){//Shutter7
					if(tag.getTagName().equals("Shutter Speed Value")){
						d.setShutter(tag.getDescription());
					}
				}
				for(Tag tag : directory.getTags()){//Aperture8
					if(tag.getTagName().equals("Aperture Value")){
						d.setAperture(tag.getDescription());
					}
				}
				for(Tag tag : directory.getTags()){//Exposure Mode9
					if(tag.getTagName().equals("Exposure Mode")){
						d.setExposure(tag.getDescription());
					}
				}
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		String sql = "insert into SLR_GALL_PICTURE_EXIF values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		//순서:1.gall_pro_rno, 2.board_rno, 3.id, 4.jemok, 5.mdate, 6.good, 7.hit
		// 8.contents_txt, 9.contents_picture, 10.bad, 11.grp, 12.deep,
		// 13.gall_pro_category, 14.contents_picture_thumb
		try{
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, d.getBoardrno());
			pst.setString(2, fileName);
			pst.setString(3, d.getMake());
			pst.setString(4, d.getModel());
			pst.setString(5, d.getLens());
			pst.setString(6, d.getCopyright());
			pst.setString(7, d.getFocallength());
			pst.setString(8, d.getIso());
			pst.setString(9, d.getShutter());
			pst.setString(10, d.getAperture());
			pst.setString(11, d.getExposure());
			pst.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		
	}


	// ///////////////////////////조회에 따른 게시판목록
	public ArrayList<GalleryData> list(String cat){
		String os = System.getProperty("os.name").toLowerCase();
		try{
			String ip = java.net.InetAddress.getLocalHost().getHostAddress();
			System.out.println("접속자 아이피 : " + ip);
		}catch(UnknownHostException e){
			e.printStackTrace();
		}
		pageCompute(); // 페이지를 불러옴.
		ArrayList<GalleryData> a = new ArrayList<GalleryData>();
		String sql;
		if(cat.equals("all")){//모든 카테고리시 if문 ( where조건이 업음)
			sql = "select * from(select rownum rn , s. * from" + "(select * from SLR_GALL_PRO_BOARD "
					+ "order by gall_pro_rno desc, deep)s)a where rn between ? and ?";
			try{
				PreparedStatement pst = conn.prepareStatement(sql);
				//			pst.setString(1, "%" + findStr + "%");
				/////페이지
				pst.setInt(1, startNo);
				pst.setInt(2, endNo);
				ResultSet rs = pst.executeQuery();
				while (rs.next()){
					GalleryData s = new GalleryData();
					s.setGallProRno(rs.getInt("gall_pro_rno"));
					s.setBoardRno(rs.getString("board_rno"));
					s.setId(rs.getString("id"));
					s.setJemok(rs.getString("jemok"));
					s.setMdate(rs.getString("mdate"));
					s.setGood(rs.getInt("good"));
					s.setHit(rs.getInt("hit"));
					s.setContentsTxt(rs.getString("contents_txt"));
					s.setContentsPic(rs.getString("contents_picture"));
					s.setBad(rs.getInt("bad"));
					s.setGrp(rs.getInt("grp"));
					s.setDeep(rs.getInt("deep"));
					s.setGallProCategory(rs.getString("gall_pro_category"));
					s.setContentsPicThumb(rs.getString("contents_picture_thumb"));
					a.add(s);
				}
			}catch(Exception ex){
				ex.printStackTrace();
			}
		}
		else{//특정 카테고리시 if문 (where조건에 cat이들어감 (cat은 매개변수로 받아온 카테고리값))
			sql = "select * from(select rownum rn , s. * from"
					+ "(select * from SLR_GALL_PRO_BOARD where GALL_PRO_CATEGORY = ? "
					+ "order by gall_pro_rno desc, deep)s)a where rn between ? and ?";
			try{
				PreparedStatement pst = conn.prepareStatement(sql);
				//			pst.setString(1, "%" + findStr + "%");
				/////페이지
				pst.setString(1, cat);
				pst.setInt(2, startNo);
				pst.setInt(3, endNo);
				ResultSet rs = pst.executeQuery();
				while (rs.next()){
					GalleryData s = new GalleryData();
					s.setGallProRno(rs.getInt("gall_pro_rno"));
					s.setBoardRno(rs.getString("board_rno"));
					s.setId(rs.getString("id"));
					s.setJemok(rs.getString("jemok"));
					s.setMdate(rs.getString("mdate"));
					s.setGood(rs.getInt("good"));
					s.setHit(rs.getInt("hit"));
					s.setContentsTxt(rs.getString("contents_txt"));
					s.setContentsPic(rs.getString("contents_picture"));
					s.setBad(rs.getInt("bad"));
					s.setGrp(rs.getInt("grp"));
					s.setDeep(rs.getInt("deep"));
					s.setGallProCategory(rs.getString("gall_pro_category"));
					s.setContentsPicThumb(rs.getString("contents_picture_thumb"));
					a.add(s);
				}
			}catch(Exception ex){
				ex.printStackTrace();
			}
		}
		//		String sql = "select * from SLR_GALL_PRO_BOARD order by gall_pro_rno";
		return a;
	}


	// ///////////////////////////////저장
	public int append(){
		int r = 0;
		GalleryData d = new GalleryData();
		d.setBoardRno(multi.getParameter("categoryOption2"));
		//		d.setBoardRno(Integer.parseInt(multi.getParameter("board_rno")));
		d.setId(multi.getParameter("write_btn4_id"));//아이디
		d.setJemok(multi.getParameter("jemok"));//제목
		//		d.setGood(Integer.parseInt(multi.getParameter("good")));
		//				d.setHit(Integer.parseInt(multi.getParameter("hit")));
		d.setContentsTxt(multi.getParameter("contents_txt"));
		d.setContentsPic(multi.getFilesystemName("picture"));
		ExifPrintTest(multi.getFilesystemName("picture"));
		//		d.setBad(Integer.parseInt(multi.getParameter("bad")));
		d.setGallProCategory(multi.getParameter("categoryOption"));
		ExifPrintTest(d.getContentsPic());
		//		d.setContentsPicThumb(multi.getParameter("contents_picture_thumb"));
		String sql = "insert into SLR_GALL_PRO_BOARD values(SEQ_GALL_PRO_BOARD.nextval, ?, ?, ?, "
				+ "?, ?, ?, ?, ?, ?, " + "SEQ_GALL_PRO_BOARD.currval, SEQ_GALL_PRO_BOARD.currval, " + "?, ?)";
		//순서:1.gall_pro_rno, 2.board_rno, 3.id, 4.jemok, 5.mdate, 6.good, 7.hit
		// 8.contents_txt, 9.contents_picture, 10.bad, 11.grp, 12.deep,
		// 13.gall_pro_category, 14.contents_picture_thumb
		try{
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, d.getBoardRno());
			pst.setString(2, d.getId());
			pst.setString(3, d.getJemok());
			pst.setString(4, tmp);
			pst.setInt(5, d.getGood());
			pst.setInt(6, d.getHit());
			pst.setString(7, d.getContentsTxt());
			pst.setString(8, d.getContentsPic());
			pst.setInt(9, d.getBad());
			pst.setString(10, d.getGallProCategory());
			pst.setString(11, d.getContentsPicThumb());
			r = pst.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return r;
	}


	// ////////////////////////////뷰
	public GalleryData view(int rno){
		GalleryData s = new GalleryData();
		String sql = "select * from SLR_GALL_PRO_BOARD where GALL_PRO_RNO=?";
		try{
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, rno);
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				s = new GalleryData();
				s.setGallProRno(rs.getInt("gall_pro_rno"));
				s.setBoardRno(rs.getString("board_rno"));
				s.setId(rs.getString("id"));
				s.setJemok(rs.getString("jemok"));
				s.setMdate(rs.getString("mdate"));
				s.setGood(rs.getInt("good"));
				s.setHit(rs.getInt("hit"));
				s.setContentsTxt(rs.getString("contents_txt"));
				s.setContentsPic(rs.getString("contents_picture"));
				s.setBad(rs.getInt("bad"));
				s.setGrp(rs.getInt("grp"));
				s.setDeep(rs.getInt("deep"));
				s.setGallProCategory(rs.getString("gall_pro_category"));
				s.setContentsPicThumb(rs.getString("contents_picture_thumb"));
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return s;
	}


	public int delete(int frno, String fdata){
		int r = 0;
		String sql = "delete from SLR_GALL_PRO_BOARD where gall_pro_rno=?";
		try{
			if(!fdata.equals("")){
				String uploadPath = "C:/Dropbox/Final_Project/final_workspace/WebContent/slr/TopContents/Gallery/images/";
				File f = new File(uploadPath + fdata);
				if(f.exists())
					f.delete();
				System.out.println(uploadPath + fdata);
			}
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, frno);
			r = pst.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return r;
	}


	public String getFindStr(){
		return findStr;
	}


	public void setFindStr(String findStr){
		this.findStr = findStr;
	}


	public MultipartRequest getMulti(){
		return multi;
	}


	public void setMulti(MultipartRequest multi){
		this.multi = multi;
	}


	public int getListSize(){
		return listSize;
	}


	public void setListSize(int listSize){
		this.listSize = listSize;
	}


	public int getBlockSize(){
		return blockSize;
	}


	public void setBlockSize(int blockSize){
		this.blockSize = blockSize;
	}


	public int getTotSize(){
		return totSize;
	}


	public void setTotSize(int totSize){
		this.totSize = totSize;
	}


	public int getTotPage(){
		return totPage;
	}


	public void setTotPage(int totPage){
		this.totPage = totPage;
	}


	public int getTotBlock(){
		return totBlock;
	}


	public void setTotBlock(int totBlock){
		this.totBlock = totBlock;
	}


	public int getNowPage(){
		return nowPage;
	}


	public void setNowPage(int nowPage){
		this.nowPage = nowPage;
	}


	public int getNowBlock(){
		return nowBlock;
	}


	public void setNowBlock(int nowBlock){
		this.nowBlock = nowBlock;
	}


	public int getStartNo(){
		return startNo;
	}


	public void setStartNo(int startNo){
		this.startNo = startNo;
	}


	public int getEndNo(){
		return endNo;
	}


	public void setEndNo(int endNo){
		this.endNo = endNo;
	}


	public int getStartPage(){
		return startPage;
	}


	public void setStartPage(int startPage){
		this.startPage = startPage;
	}


	public int getEndPage(){
		return endPage;
	}


	public void setEndPage(int endPage){
		this.endPage = endPage;
	}
}
