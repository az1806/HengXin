package com.hengxin.entil;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Message {
	private int msgid;
	private String msgname;
	private String msgphone;
	private String msgemail;
	private String msgadress;
	private String msgdesc;
	private Date msgtime;
	private String msgreply;

	public int getMsgid() {
		return msgid;
	}

	public void setMsgid(int msgid) {
		this.msgid = msgid;
	}

	public String getMsgname() {
		return msgname;
	}

	public void setMsgname(String msgname) {
		this.msgname = msgname;
	}

	public String getMsgphone() {
		return msgphone;
	}

	public void setMsgphone(String msgphone) {
		this.msgphone = msgphone;
	}

	public String getMsgemail() {
		return msgemail;
	}

	public void setMsgemail(String msgemail) {
		this.msgemail = msgemail;
	}

	public String getMsgadress() {
		return msgadress;
	}

	public void setMsgadress(String msgadress) {
		this.msgadress = msgadress;
	}

	public String getMsgdesc() {
		return msgdesc;
	}

	public void setMsgdesc(String msgdesc) {
		this.msgdesc = msgdesc;
	}

	public Date getMsgtime() {
		return msgtime;
	}

	public void setMsgtime(Date msgtime) {
		this.msgtime = msgtime;
	}

	public String getMsgreply() {
		return msgreply;
	}

	public void setMsgreply(String msgreply) {
		this.msgreply = msgreply;
	}

	public Message(int msgid, String msgname, String msgphone, String msgemail,
			String msgadress, String msgdesc, Date msgtime, String msgreply) {
		super();
		this.msgid = msgid;
		this.msgname = msgname;
		this.msgphone = msgphone;
		this.msgemail = msgemail;
		this.msgadress = msgadress;
		this.msgdesc = msgdesc;
		this.msgtime = msgtime;
		this.msgreply = msgreply;
	}

	public Message() {
		super();
	}

	@Override
	public String toString(){
		return "Message [msgid=" + msgid + ", msgname=" + msgname
				+ ", msgphone=" + msgphone + ", msgemail=" + msgemail
				+ ", msgadress=" + msgadress + ", msgdesc=" + msgdesc
				+ ", msgtime=" + msgtime + ", msgreply=" + msgreply + "]";
	}

}
