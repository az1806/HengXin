package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.NewstypeDao;
import com.hengxin.entil.Newstype;
import com.util.DBManager;

public class NewstypeDaoImpl implements NewstypeDao {
	public List<Newstype> queryNewstypes() {
		List<Newstype> nes = new ArrayList<Newstype>();
		ResultSet rs = DBManager.querySQL("select * from newstype ;");
		try {
			while (rs.next()) {
				Newstype ne = new Newstype();
				ne.setNewstypeid(rs.getInt(1));
				ne.setNewstype(rs.getString(2));
				nes.add(ne);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nes;
	}
}