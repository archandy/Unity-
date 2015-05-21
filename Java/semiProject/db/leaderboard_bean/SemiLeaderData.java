/*
	작성일 :
	작성자 :
	기능	 :
*/

package semiBean;


public class SemiLeaderData
{

	String teamthumb = "";
	int ranking = 0;
	String teamname = "";
	int gamecnt = 0;
	int win = 0;
	int draw = 0;
	int lose = 0;
	int for_goal = 0;
	int against_goal = 0;
	int for_against_goal = 0;
	int point = 0;


	public String getTeamthumb()
	{
		return teamthumb;
	}


	public void setTeamthumb(String teamthumb)
	{
		this.teamthumb = teamthumb;
	}


	public int getRanking()
	{
		return ranking;
	}


	public void setRanking(int ranking)
	{
		this.ranking = ranking;
	}


	public String getTeamname()
	{
		return teamname;
	}


	public void setTeamname(String teamname)
	{
		this.teamname = teamname;
	}


	public int getGamecnt()
	{
		return gamecnt;
	}


	public void setGamecnt(int gamecnt)
	{
		this.gamecnt = gamecnt;
	}


	public int getWin()
	{
		return win;
	}


	public void setWin(int win)
	{
		this.win = win;
	}


	public int getDraw()
	{
		return draw;
	}


	public void setDraw(int draw)
	{
		this.draw = draw;
	}


	public int getLose()
	{
		return lose;
	}


	public void setLose(int lose)
	{
		this.lose = lose;
	}


	public int getFor_goal()
	{
		return for_goal;
	}


	public void setFor_goal(int for_goal)
	{
		this.for_goal = for_goal;
	}


	public int getAgainst_goal()
	{
		return against_goal;
	}


	public void setAgainst_goal(int against_goal)
	{
		this.against_goal = against_goal;
	}


	public int getFor_against_goal()
	{
		this.for_against_goal = (this.for_goal - this.against_goal);
		return for_against_goal;
	}


	public void setFor_against_goal(int for_against_goal)
	{
		this.for_against_goal = for_against_goal;
	}


	public int getPoint()
	{
		this.point = (win * 3) + draw;
		return point;
	}


	public void setPoint(int point)
	{
		this.point = point;
	}
}
