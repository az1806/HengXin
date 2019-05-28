package com.hengxin.entil;

public class Lunbo {
	private int lbid;
	private String lburl;

	public int getLbid() {
		return lbid;
	}

	public void setLbid(int lbid) {
		this.lbid = lbid;
	}

	public String getLburl() {
		return lburl;
	}

	public void setLburl(String lburl) {
		this.lburl = lburl;
	}

	public Lunbo(int lbid, String lburl) {
		super();
		this.lbid = lbid;
		this.lburl = lburl;
	}

	public Lunbo() {
		super();
	}

	@Override
	public String toString() {
		return "Lunbo [lbid=" + lbid + ", lburl=" + lburl + "]";
	}

}
