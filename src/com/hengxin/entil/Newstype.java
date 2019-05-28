package com.hengxin.entil;

public class Newstype {
	private int newstypeid;
	private String newstype;

	public int getNewstypeid() {
		return newstypeid;
	}

	public void setNewstypeid(int newstypeid) {
		this.newstypeid = newstypeid;
	}

	public String getNewstype() {
		return newstype;
	}

	public void setNewstype(String newstype) {
		this.newstype = newstype;
	}

	public Newstype(int newstypeid, String newstype) {
		super();
		this.newstypeid = newstypeid;
		this.newstype = newstype;
	}

	public Newstype() {
		super();
	}

	@Override
	public String toString() {
		return "Newstype [newstypeid=" + newstypeid + ", newstype=" + newstype
				+ "]";
	}

}
