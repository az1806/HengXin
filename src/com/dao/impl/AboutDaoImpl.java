package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.AboutDao;
import com.hengxin.entil.Maker;
import com.util.DBManager;

public class AboutDaoImpl implements AboutDao {
	public List<Maker> queryMaker() {
		List<Maker> mk = new ArrayList<Maker>();
		ResultSet rs = DBManager.querySQL("select * from maker ;");
		try {
			while (rs.next()) {
				Maker pt = new Maker();
				
				pt.setMakername(rs.getString(2));
				pt.setMakersex(rs.getString(3));
				pt.setMakerurl(rs.getString(8));
				mk.add(pt);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mk;
	}
}
