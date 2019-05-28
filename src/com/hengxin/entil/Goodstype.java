package com.hengxin.entil;

public class Goodstype {
private int gdstypeid;
private String gdstype;
public int getGdstypeid() {
	return gdstypeid;
}
public void setGdstypeid(int gdstypeid) {
	this.gdstypeid = gdstypeid;
}
public String getGdstype() {
	return gdstype;
}
public void setGdstype(String gdstype) {
	this.gdstype = gdstype;
}

public Goodstype(int gdstypeid, String gdstype) {
	super();
	this.gdstypeid = gdstypeid;
	this.gdstype = gdstype;
}

public Goodstype() {
	super();
}
@Override
public String toString() {
	return "Goodstype [gdstypeid=" + gdstypeid + ", gdstype=" + gdstype + "]";
}

}
