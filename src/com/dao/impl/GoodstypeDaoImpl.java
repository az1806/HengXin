package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.dao.GoodstypeDao;
import com.hengxin.entil.Goodstype;
import com.util.DBManager;


public class GoodstypeDaoImpl implements GoodstypeDao{
	
	public List<Goodstype> queryGoodstypes() {
		List<Goodstype> gds = new ArrayList<Goodstype>();
		ResultSet rs = DBManager.querySQL("select * from goodstype;");
		try {
			while (rs.next()) {
				Goodstype gd = new Goodstype();
				
				gd.setGdstypeid(rs.getInt(1));
				gd.setGdstype(rs.getString(2));
				
				gds.add(gd);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gds;
	}
	

}
