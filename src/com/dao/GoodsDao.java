package com.dao;

import java.util.List;

import com.hengxin.entil.Goods;

public interface GoodsDao {
	List<Goods> queryGoodstype(int type);
	
	List<Goods> queryGoods();
	
	List<Goods> queryGoodslike(String like);
}
