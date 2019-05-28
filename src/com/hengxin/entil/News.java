package com.hengxin.entil;

public class News {
	private int newsid;
	private String newsname;
	private String news;
	private String newtj;
	private String newstype;
	private String newstime;
	public int getNewsid() {
		return newsid;
	}
	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}
	public String getNewsname() {
		return newsname;
	}
	public void setNewsname(String newsname) {
		this.newsname = newsname;
	}
	public String getNews() {
		return news;
	}
	public void setNews(String news) {
		this.news = news;
	}
	public String getNewtj() {
		return newtj;
	}
	public void setNewtj(String newtj) {
		this.newtj = newtj;
	}
	public String getNewstype() {
		return newstype;
	}
	public void setNewstype(String newstype) {
		this.newstype = newstype;
	}
	public String getNewstime() {
		return newstime;
	}
	public void setNewstime(String newstime) {
		this.newstime = newstime;
	}
	public News(int newsid, String newsname, String news, String newtj,
			String newstype, String newstime) {
		super();
		this.newsid = newsid;
		this.newsname = newsname;
		this.news = news;
		this.newtj = newtj;
		this.newstype = newstype;
		this.newstime = newstime;
	}
	public News() {
		super();
	}
	@Override
	public String toString() {
		return "News [newsid=" + newsid + ", newsname=" + newsname + ", news="
				+ news + ", newtj=" + newtj + ", newstype=" + newstype
				+ ", newstime=" + newstime + "]";
	}
	

}
