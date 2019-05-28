package com.hengxin.entil;

public class Maker {
	private int makerid;
	private String makername;
	private String makersex;
	private String makerphone;
	private String makerqq;
	private String makeremail;
	private String makeradress;
	private String makerurl;

	public int getMakerid() {
		return makerid;
	}

	public void setMakerid(int makerid) {
		this.makerid = makerid;
	}

	public String getMakername() {
		return makername;
	}

	public void setMakername(String makername) {
		this.makername = makername;
	}

	public String getMakersex() {
		return makersex;
	}

	public void setMakersex(String makersex) {
		this.makersex = makersex;
	}

	public String getMakerphone() {
		return makerphone;
	}

	public void setMakerphone(String makerphone) {
		this.makerphone = makerphone;
	}

	public String getMakerqq() {
		return makerqq;
	}

	public void setMakerqq(String makerqq) {
		this.makerqq = makerqq;
	}

	public String getMakeremail() {
		return makeremail;
	}

	public void setMakeremail(String makeremail) {
		this.makeremail = makeremail;
	}

	public String getMakeradress() {
		return makeradress;
	}

	public void setMakeradress(String makeradress) {
		this.makeradress = makeradress;
	}

	public String getMakerurl() {
		return makerurl;
	}

	public void setMakerurl(String makerurl) {
		this.makerurl = makerurl;
	}

	public Maker(int makerid, String makername, String makersex,
			String makerphone, String makerqq, String makeremail,
			String makeradress, String makerurl) {
		super();
		this.makerid = makerid;
		this.makername = makername;
		this.makersex = makersex;
		this.makerphone = makerphone;
		this.makerqq = makerqq;
		this.makeremail = makeremail;
		this.makeradress = makeradress;
		this.makerurl = makerurl;
	}

	public Maker() {
		super();
	}

	@Override
	public String toString() {
		return "Maker [makerid=" + makerid + ", makername=" + makername
				+ ", makersex=" + makersex + ", makerphone=" + makerphone
				+ ", makerqq=" + makerqq + ", makeremail=" + makeremail
				+ ", makeradress=" + makeradress + ", makerurl=" + makerurl
				+ "]";
	}

}
