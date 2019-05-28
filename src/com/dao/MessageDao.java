package com.dao;

import java.sql.Date;

public interface MessageDao {
 boolean add(String msgname, String msgphone, String msgemail,String msgadress,
			String msgdesc);
}