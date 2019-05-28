package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.GoodsDao;
import com.hengxin.entil.General;
import com.hengxin.entil.Goods;
import com.hengxin.entil.Goodstype;
import com.util.DBManager;

public class GoodsDaoImpl implements GoodsDao{
	
	public List<Goods> queryGoodstype(int type) {
		List<Goods> gd = new ArrayList<Goods>();
		ResultSet rs = DBManager.querySQL("select * from goods where gdsType = "+type);
		try {
			while (rs.next()) {
				Goods g = new Goods();
				g.setGdsid(rs.getInt(1));
				g.setGdsname(rs.getString(2));
				g.setGdstype(rs.getString(3));
				g.setGdsdesc(rs.getString(4));
				g.setGdskey(rs.getString(5));
				g.setGdsurl(rs.getString(6));
				g.setSmid1(rs.getString(7));
				g.setSm1(rs.getString(8));
				g.setSmid2(rs.getString(9));
				g.setSm2(rs.getString(10));
				g.setSmid3(rs.getString(11));
				g.setSm3(rs.getString(12));
				gd.add(g);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gd;
	}
	

		

	public List<Goods> queryGoods() {
		List<Goods> com = new ArrayList<Goods>();
		ResultSet rs = DBManager.querySQL("select * from goods;");
		try {
			while (rs.next()){
				Goods cm = new Goods();
				cm.setGdsid(rs.getInt(1));
				cm.setGdsname(rs.getString(2));
				cm.setGdstype(rs.getString(3));
				cm.setGdsdesc(rs.getString(4));
				cm.setGdskey(rs.getString(5));
				cm.setGdsurl(rs.getString(6));
				cm.setSmid1(rs.getString(7));
				cm.setSm1(rs.getString(8));
				cm.setSmid2(rs.getString(9));
				cm.setSm2(rs.getString(10));
				cm.setSmid3(rs.getString(11));
				cm.setSm3(rs.getString(12));
				com.add(cm);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return com;
		
		
	}
	
	public List<Goods> queryGoodslike(String like){
		List<Goods> li = new ArrayList<Goods>();
		ResultSet rs = DBManager.querySQL("select * from goods where gdsName like '%"+like+"%'");
		try {
			while (rs.next()) {
				Goods ke = new Goods();
				ke.setGdsid(rs.getInt(1));
				ke.setGdsname(rs.getString(2));
				ke.setGdstype(rs.getString(3));
				ke.setGdsdesc(rs.getString(4));
				ke.setGdskey(rs.getString(5));
				ke.setGdsurl(rs.getString(6));
				ke.setSmid1(rs.getString(7));
				ke.setSm1(rs.getString(8));
				ke.setSmid2(rs.getString(9));
				ke.setSm2(rs.getString(10));
				ke.setSmid3(rs.getString(11));
				ke.setSm3(rs.getString(12));
				li.add(ke);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return li;
	}
	
	
}
