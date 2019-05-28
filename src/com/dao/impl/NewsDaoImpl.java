package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.NewsDao;
import com.hengxin.entil.General;
import com.hengxin.entil.Goods;
import com.hengxin.entil.News;
import com.hengxin.entil.Newstype;
import com.util.DBManager;

public class NewsDaoImpl implements NewsDao {

	public List<News> queryNewstype(int type) {
		List<News> nw = new ArrayList<News>();
		ResultSet ns = DBManager.querySQL("select * from news where newsType = "+type);
		try {
			while (ns.next()) {
				News n = new News();
				n.setNewsid(ns.getInt(1));
				n.setNewsname(ns.getString(2));
				n.setNews(ns.getString(3));
				n.setNewtj(ns.getString(4));
				n.setNewstype(ns.getString(5));
				n.setNewstime(ns.getString(6));
				nw.add(n);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nw;
	}
	
	public List<News> queryNews() {
		List<News> nes = new ArrayList<News>();
		ResultSet rs = DBManager.querySQL("select * from news ;");
		try {
			while (rs.next()) {
				News nw= new News();
				nw.setNewsid(rs.getInt(1));
				nw.setNewsname(rs.getString(2));
				nw.setNews(rs.getString(3));
				nw.setNewtj(rs.getString(4));
				nw.setNewstype(rs.getString(5));
				nw.setNewstime(rs.getString(6));
				nes.add(nw);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nes;
	}
	
	
}
