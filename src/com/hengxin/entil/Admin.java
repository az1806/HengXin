package com.hengxin.entil;

public class Admin {
	private int adminid;
	private String adminname;
	private String adminaccount;
	private String adminpwd;
	private String adminphone;
	private String adminemail;
	private String adminadress;
	private String adminqq;

	public int getAdminid() {
		return adminid;
	}

	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getAdminaccount() {
		return adminaccount;
	}

	public void setAdminaccount(String adminaccount) {
		this.adminaccount = adminaccount;
	}

	public String getAdminpwd() {
		return adminpwd;
	}

	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}

	public String getAdminphone() {
		return adminphone;
	}

	public void setAdminphone(String adminphone) {
		this.adminphone = adminphone;
	}

	public String getAdminemail() {
		return adminemail;
	}

	public void setAdminemail(String adminemail) {
		this.adminemail = adminemail;
	}

	public String getAdminadress() {
		return adminadress;
	}

	public void setAdminadress(String adminadress) {
		this.adminadress = adminadress;
	}

	public String getAdminqq() {
		return adminqq;
	}

	public void setAdminqq(String adminqq) {
		this.adminqq = adminqq;
	}

	public Admin(int adminid, String adminname, String adminaccount,
			String adminpwd, String adminphone, String adminemail,
			String adminadress, String adminqq) {
		super();
		this.adminid = adminid;
		this.adminname = adminname;
		this.adminaccount = adminaccount;
		this.adminpwd = adminpwd;
		this.adminphone = adminphone;
		this.adminemail = adminemail;
		this.adminadress = adminadress;
		this.adminqq = adminqq;
	}

	public Admin() {
		super();
	}

	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", adminname=" + adminname
				+ ", adminaccount=" + adminaccount + ", adminpwd=" + adminpwd
				+ ", adminphone=" + adminphone + ", adminemail=" + adminemail
				+ ", adminadress=" + adminadress + ", adminqq=" + adminqq + "]";
	}

}
