package com.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.GeneralDao;
import com.hengxin.entil.General;
import com.util.DBManager;

public class GeneralDaoImpl implements GeneralDao {
	public int updateGeneral(General com) {
		// TODO Auto-generated method stub
		return 0;	
	}
	
	
	
	public General queryGeneral() {
		General com = new General();
		ResultSet rs = DBManager.querySQL("select * from general;");
		try {
			while (rs.next()){
				com.setCpid(rs.getInt(1));
				com.setCp(rs.getString(2));
				System.out.println("≤È—Ø");
				com.setAdress(rs.getString(4));
				com.setKey(rs.getString(5));
				com.setPhone(rs.getString(6));
				com.setEmail(rs.getString(7));
				com.setCpwh(rs.getString(9));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return com;
		
		
	}
}
