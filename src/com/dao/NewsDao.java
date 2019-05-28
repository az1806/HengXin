package com.dao;

import java.util.List;

import com.hengxin.entil.General;
import com.hengxin.entil.News;


public interface NewsDao {
	List<News> queryNewstype(int type);
	
	List<News> queryNews();
}
