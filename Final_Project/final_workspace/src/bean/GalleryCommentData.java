/*
	작성일 : 2015.06.22
	작성자 : 정백경
	기능	 : 댓글 데이터
*/

package bean;


public class GalleryCommentData
{

	int gall_org_rno;
	int board_rno;
	int gall_comment_rno;
	String gall_comment_id;
	String gall_comment_contents;
	String gall_comment_mdate;
	int gall_comment_like;
	int gall_comment_grp;
	int gall_comment_deep;


	public int getGall_org_rno()
	{
		return gall_org_rno;
	}


	public void setGall_org_rno(int gall_org_rno)
	{
		this.gall_org_rno = gall_org_rno;
	}


	public int getBoard_rno()
	{
		return board_rno;
	}


	public void setBoard_rno(int board_rno)
	{
		this.board_rno = board_rno;
	}


	public int getGall_comment_rno()
	{
		return gall_comment_rno;
	}


	public void setGall_comment_rno(int gall_comment_rno)
	{
		this.gall_comment_rno = gall_comment_rno;
	}


	public String getGall_comment_id()
	{
		return gall_comment_id;
	}


	public void setGall_comment_id(String gall_comment_id)
	{
		this.gall_comment_id = gall_comment_id;
	}


	public String getGall_comment_contents()
	{
		return gall_comment_contents;
	}


	public void setGall_comment_contents(String gall_comment_contents)
	{
		this.gall_comment_contents = gall_comment_contents;
	}


	public String getGall_comment_mdate()
	{
		return gall_comment_mdate;
	}


	public void setGall_comment_mdate(String gall_comment_mdate)
	{
		this.gall_comment_mdate = gall_comment_mdate;
	}


	public int getGall_comment_like()
	{
		return gall_comment_like;
	}


	public void setGall_comment_like(int gall_comment_like)
	{
		this.gall_comment_like = gall_comment_like;
	}


	public int getGall_comment_grp()
	{
		return gall_comment_grp;
	}


	public void setGall_comment_grp(int gall_comment_grp)
	{
		this.gall_comment_grp = gall_comment_grp;
	}


	public int getGall_comment_deep()
	{
		return gall_comment_deep;
	}


	public void setGall_comment_deep(int gall_comment_deep)
	{
		this.gall_comment_deep = gall_comment_deep;
	}
}
