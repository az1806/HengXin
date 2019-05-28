package com.hengxin.entil;

public class Goods {
	private int gdsid;
	private String gdsname;
	private String gdstype;
	private String gdsdesc;
	private String gdskey;
	private String gdsurl;
	private String smid1;
	private String sm1;
	private String smid2;
	private String sm2;
	private String smid3;
	private String sm3;

	public int getGdsid() {
		return gdsid;
	}

	public void setGdsid(int gdsid) {
		this.gdsid = gdsid;
	}

	public String getGdsname() {
		return gdsname;
	}

	public void setGdsname(String gdsname) {
		this.gdsname = gdsname;
	}

	public String getGdstype() {
		return gdstype;
	}

	public void setGdstype(String gdstype) {
		this.gdstype = gdstype;
	}

	public String getGdsdesc() {
		return gdsdesc;
	}

	public void setGdsdesc(String gdsdesc) {
		this.gdsdesc = gdsdesc;
	}

	public String getGdskey() {
		return gdskey;
	}

	public void setGdskey(String gdskey) {
		this.gdskey = gdskey;
	}

	public String getGdsurl() {
		return gdsurl;
	}

	public void setGdsurl(String gdsurl) {
		this.gdsurl = gdsurl;
	}

	public String getSmid1() {
		return smid1;
	}

	public void setSmid1(String smid1) {
		this.smid1 = smid1;
	}

	public String getSm1() {
		return sm1;
	}

	public void setSm1(String sm1) {
		this.sm1 = sm1;
	}

	public String getSmid2() {
		return smid2;
	}

	public void setSmid2(String smid2) {
		this.smid2 = smid2;
	}

	public String getSm2() {
		return sm2;
	}

	public void setSm2(String sm2) {
		this.sm2 = sm2;
	}

	public String getSmid3() {
		return smid3;
	}

	public void setSmid3(String smid3) {
		this.smid3 = smid3;
	}

	public String getSm3() {
		return sm3;
	}

	public void setSm3(String sm3) {
		this.sm3 = sm3;
	}

	public Goods(int gdsid, String gdsname, String gdstype, String gdsdesc,
			String gdskey, String gdsurl, String smid1, String sm1,
			String smid2, String sm2, String smid3, String sm3) {
		super();
		this.gdsid = gdsid;
		this.gdsname = gdsname;
		this.gdstype = gdstype;
		this.gdsdesc = gdsdesc;
		this.gdskey = gdskey;
		this.gdsurl = gdsurl;
		this.smid1 = smid1;
		this.sm1 = sm1;
		this.smid2 = smid2;
		this.sm2 = sm2;
		this.smid3 = smid3;
		this.sm3 = sm3;
	}

	public Goods() {
		super();
	}

	@Override
	public String toString() {
		return "Goods [gdsid=" + gdsid + ", gdsname=" + gdsname + ", gdstype="
				+ gdstype + ", gdsdesc=" + gdsdesc + ", gdskey=" + gdskey
				+ ", gdsurl=" + gdsurl + ", smid1=" + smid1 + ", sm1=" + sm1
				+ ", smid2=" + smid2 + ", sm2=" + sm2 + ", smid3=" + smid3
				+ ", sm3=" + sm3 + "]";
	}

}
