package com.hengxin.entil;

public class General {
	private int cpid;
	private String cp;
	private String logo;
	private String adress;
	private String key;
	private String phone;
	private String email;
	private String qq;
	private String cpwh;
	public int getCpid() {
		return cpid;
	}
	public void setCpid(int cpid) {
		this.cpid = cpid;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getCpwh() {
		return cpwh;
	}
	public void setCpwh(String cpwh) {
		this.cpwh = cpwh;
	}
	public General(int cpid, String cp, String logo, String adress, String key,
			String phone, String email, String qq, String cpwh) {
		super();
		this.cpid = cpid;
		this.cp = cp;
		this.logo = logo;
		this.adress = adress;
		this.key = key;
		this.phone = phone;
		this.email = email;
		this.qq = qq;
		this.cpwh = cpwh;
	}
	public General() {
		super();
	}
	@Override
	public String toString() {
		return "General [cpid=" + cpid + ", cp=" + cp + ", logo=" + logo
				+ ", adress=" + adress + ", key=" + key + ", phone=" + phone
				+ ", email=" + email + ", qq=" + qq + ", cpwh=" + cpwh + "]";
	}

	
}
