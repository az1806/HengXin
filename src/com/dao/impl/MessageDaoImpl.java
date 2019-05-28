package com.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.dao.MessageDao;
import com.hengxin.entil.Message;
import com.util.DBManager;


public class MessageDaoImpl implements MessageDao {
		public boolean add(String msgname, String msgphone, String msgemail,String msgadress,
				String msgdesc) {
			int n=DBManager.updateSQL("insert into message(msgName,msgPhone,msgEmail,msgAdress,msgDesc) values('"+msgname+"','"+msgphone+"','"+msgemail+"','"+msgadress+"','"+msgdesc+"');");
			
			if (n == 1) {
				System.out.println("留言加入成功");
				return true;
			}else{
				System.out.println("留言失败");
			}
			
			return false;
			
		}
		
}
