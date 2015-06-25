/*
	작성일 : 2015-06-20
	작성자 : 정백경
	기능	 : 갤러리용 겟셋터용
*/
/**
 * 
 */

package bean;


public class GalleryData
{

	int gallProRno = 0;
	int good = 0;
	int bad = 0;
	int hit = 0;
	int grp = 0;
	int deep = 0;
	String boardRno;
	String gallProCategory;
	String id;
	String jemok;
	String mdate;
	String contentsTxt;
	String contentsPic;
	String contentsPicThumb;


	public int getGallProRno()
	{
		return gallProRno;
	}


	public void setGallProRno(int gallProRno)
	{
		this.gallProRno = gallProRno;
	}


	public String getBoardRno()
	{
		return boardRno;
	}


	public void setBoardRno(String boardRno)
	{
		this.boardRno = boardRno;
	}


	public int getGood()
	{
		return good;
	}


	public void setGood(int good)
	{
		this.good = good;
	}


	public int getBad()
	{
		return bad;
	}


	public void setBad(int bad)
	{
		this.bad = bad;
	}


	public int getHit()
	{
		return hit;
	}


	public void setHit(int hit)
	{
		this.hit = hit;
	}


	public int getGrp()
	{
		return grp;
	}


	public void setGrp(int grp)
	{
		this.grp = grp;
	}


	public int getDeep()
	{
		return deep;
	}


	public void setDeep(int deep)
	{
		this.deep = deep;
	}


	public String getGallProCategory()
	{
		return gallProCategory;
	}


	public void setGallProCategory(String gallProCategory)
	{
		this.gallProCategory = gallProCategory;
	}


	public String getId()
	{
		return id;
	}


	public void setId(String id)
	{
		this.id = id;
	}


	public String getJemok()
	{
		return jemok;
	}


	public void setJemok(String jemok)
	{
		this.jemok = jemok;
	}


	public String getMdate()
	{
		return mdate;
	}


	public void setMdate(String mdate)
	{
		this.mdate = mdate;
	}


	public String getContentsTxt()
	{
		return contentsTxt;
	}


	public void setContentsTxt(String contentsTxt)
	{
		this.contentsTxt = contentsTxt;
	}


	public String getContentsPic()
	{
		return contentsPic;
	}


	public void setContentsPic(String contentsPic)
	{
		this.contentsPic = contentsPic;
	}


	public String getContentsPicThumb()
	{
		return contentsPicThumb;
	}


	public void setContentsPicThumb(String contentsPicThumb)
	{
		this.contentsPicThumb = contentsPicThumb;
	}
}
