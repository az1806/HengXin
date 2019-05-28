package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.LunboDao;
import com.hengxin.entil.Lunbo;
import com.util.DBManager;

public class LunboDaoImpl implements LunboDao {
	public List<Lunbo> queryLunbo() {
		List<Lunbo> gds = new ArrayList<Lunbo>();
		ResultSet rs = DBManager.querySQL("select * from lunbo;");
		try {
			while (rs.next()) {
				Lunbo lb = new Lunbo();
				lb.setLbid(rs.getInt(1));
				lb.setLburl(rs.getString(2));
				System.out.println("lb");
				gds.add(lb);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gds;
	}
}
